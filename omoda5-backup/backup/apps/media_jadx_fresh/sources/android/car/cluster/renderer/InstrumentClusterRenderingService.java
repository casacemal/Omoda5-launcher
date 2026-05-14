package android.car.cluster.renderer;

import android.annotation.SystemApi;
import android.app.ActivityOptions;
import android.app.Service;
import android.car.Car;
import android.car.cluster.ClusterActivityState;
import android.car.cluster.renderer.IInstrumentCluster;
import android.car.cluster.renderer.IInstrumentClusterNavigation;
import android.car.navigation.CarNavigationInstrumentCluster;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.util.LruCache;
import android.view.KeyEvent;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;

@SystemApi
/* loaded from: classes.dex */
public abstract class InstrumentClusterRenderingService extends Service {
    private static final String BITMAP_QUERY_HEIGHT = "h";
    private static final String BITMAP_QUERY_WIDTH = "w";
    private static final int IMAGE_CACHE_SIZE_BYTES = 4194304;

    @Deprecated
    private static final int NAVIGATION_STATE_EVENT_ID = 1;
    private static final String TAG = "CAR.L.CLUSTER";
    private ActivityOptions mActivityOptions;
    private ClusterActivityState mActivityState;
    private ContextOwner mNavContextOwner;
    private ComponentName mNavigationComponent;
    private RendererBinder mRendererBinder;
    private final Object mLock = new Object();
    private Handler mUiHandler = new Handler(Looper.getMainLooper());
    private final LruCache<String, Bitmap> mCache = new LruCache<String, Bitmap>(4194304) { // from class: android.car.cluster.renderer.InstrumentClusterRenderingService.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public int sizeOf(String str, Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    };

    public abstract NavigationRenderer getNavigationRenderer();

    public void onKeyEvent(KeyEvent keyEvent) {
    }

    public void onNavigationComponentLaunched() {
    }

    public void onNavigationComponentReleased() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ContextOwner {
        final Set<String> mAuthorities;
        final Set<String> mPackageNames;
        final int mPid;
        final int mUid;

        ContextOwner(int r1, int r2, final PackageManager packageManager) {
            Set<String> setEmptySet;
            this.mUid = r1;
            this.mPid = r2;
            String[] packagesForUid = r1 != 0 ? packageManager.getPackagesForUid(r1) : null;
            if (packagesForUid != null) {
                setEmptySet = Collections.unmodifiableSet(new HashSet(Arrays.asList(packagesForUid)));
            } else {
                setEmptySet = Collections.emptySet();
            }
            this.mPackageNames = setEmptySet;
            this.mAuthorities = Collections.unmodifiableSet((Set) setEmptySet.stream().map(new Function() { // from class: android.car.cluster.renderer.-$$Lambda$InstrumentClusterRenderingService$ContextOwner$G_V8CE2R_HiXVhrIYEeuqJR9Ghk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return this.f$0.lambda$new$0$InstrumentClusterRenderingService$ContextOwner(packageManager, (String) obj);
                }
            }).flatMap(new Function() { // from class: android.car.cluster.renderer.-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((List) obj).stream();
                }
            }).collect(Collectors.toSet()));
        }

        public String toString() {
            return "{uid: " + this.mUid + ", pid: " + this.mPid + ", packagenames: " + this.mPackageNames + ", authorities: " + this.mAuthorities + "}";
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getAuthoritiesForPackage, reason: merged with bridge method [inline-methods] */
        public List<String> lambda$new$0$InstrumentClusterRenderingService$ContextOwner(PackageManager packageManager, String str) {
            try {
                ProviderInfo[] providerInfoArr = packageManager.getPackageInfo(str, 8).providers;
                if (providerInfoArr == null) {
                    return Collections.emptyList();
                }
                return (List) Arrays.stream(providerInfoArr).map(new Function() { // from class: android.car.cluster.renderer.-$$Lambda$InstrumentClusterRenderingService$ContextOwner$sb7STAn9Q2djz0EjdJOzvyJjIRk
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((ProviderInfo) obj).authority;
                    }
                }).collect(Collectors.toList());
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("CAR.L.CLUSTER", "Package name not found while retrieving content provider authorities: " + str);
                return Collections.emptyList();
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
            Log.d("CAR.L.CLUSTER", "onBind, intent: " + intent);
        }
        if (this.mRendererBinder == null) {
            this.mRendererBinder = new RendererBinder(getNavigationRenderer());
        }
        return this.mRendererBinder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNavigationActivity() {
        ClusterActivityState clusterActivityState;
        ContextOwner navigationContextOwner = getNavigationContextOwner();
        if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
            Log.d("CAR.L.CLUSTER", String.format("updateNavigationActivity (mActivityOptions: %s, mActivityState: %s, mNavContextOwnerUid: %s)", this.mActivityOptions, this.mActivityState, navigationContextOwner));
        }
        if (navigationContextOwner == null || navigationContextOwner.mUid == 0 || this.mActivityOptions == null || (clusterActivityState = this.mActivityState) == null || !clusterActivityState.isVisible()) {
            if (this.mNavigationComponent != null) {
                this.mNavigationComponent = null;
                onNavigationComponentReleased();
                return;
            }
            return;
        }
        ComponentName navigationComponentByOwner = getNavigationComponentByOwner(navigationContextOwner);
        if (Objects.equals(this.mNavigationComponent, navigationComponentByOwner)) {
            if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
                Log.d("CAR.L.CLUSTER", "Already launched component: " + navigationComponentByOwner);
                return;
            }
            return;
        }
        if (navigationComponentByOwner == null) {
            if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
                Log.d("CAR.L.CLUSTER", "No component found for owner: " + navigationContextOwner);
                return;
            }
            return;
        }
        if (!startNavigationActivity(navigationComponentByOwner)) {
            if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
                Log.d("CAR.L.CLUSTER", "Unable to launch component: " + navigationComponentByOwner);
                return;
            }
            return;
        }
        this.mNavigationComponent = navigationComponentByOwner;
        onNavigationComponentLaunched();
    }

    private ComponentName getNavigationComponentByOwner(ContextOwner contextOwner) {
        Iterator<String> it = contextOwner.mPackageNames.iterator();
        while (it.hasNext()) {
            ComponentName componentFromPackage = getComponentFromPackage(it.next());
            if (componentFromPackage != null) {
                if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
                    Log.d("CAR.L.CLUSTER", "Found component: " + componentFromPackage);
                }
                return componentFromPackage;
            }
        }
        return null;
    }

    private ContextOwner getNavigationContextOwner() {
        ContextOwner contextOwner;
        synchronized (this.mLock) {
            contextOwner = this.mNavContextOwner;
        }
        return contextOwner;
    }

    private ComponentName getComponentFromPackage(String str) {
        PackageManager packageManager = getPackageManager();
        if (packageManager.checkPermission(Car.PERMISSION_CAR_DISPLAY_IN_CLUSTER, str) != 0) {
            Log.i("CAR.L.CLUSTER", String.format("Package '%s' doesn't have permission %s", str, Car.PERMISSION_CAR_DISPLAY_IN_CLUSTER));
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN").addCategory("android.car.cluster.NAVIGATION").setPackage(str);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 64);
        if (listQueryIntentActivities == null || listQueryIntentActivities.isEmpty() || listQueryIntentActivities.get(0).getComponentInfo() == null) {
            Log.i("CAR.L.CLUSTER", "Failed to resolve an intent: " + intent);
            return null;
        }
        return listQueryIntentActivities.get(0).getComponentInfo().getComponentName();
    }

    protected boolean startNavigationActivity(ComponentName componentName) {
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.putExtra("android.car.cluster.ClusterActivityState", this.mActivityState.toBundle());
        intent.addFlags(268435456);
        try {
            startActivityAsUser(intent, this.mActivityOptions.toBundle(), UserHandle.CURRENT);
            Log.i("CAR.L.CLUSTER", String.format("Activity launched: %s (options: %s, displayId: %d)", this.mActivityOptions, intent, Integer.valueOf(this.mActivityOptions.getLaunchDisplayId())));
            return true;
        } catch (ActivityNotFoundException unused) {
            Log.w("CAR.L.CLUSTER", "Unable to find activity for intent: " + intent);
            return false;
        } catch (Exception e) {
            Log.e("CAR.L.CLUSTER", "Error trying to launch intent: " + intent + ". Ignored", e);
            return false;
        }
    }

    @Deprecated
    public void setClusterActivityLaunchOptions(String str, ActivityOptions activityOptions) {
        setClusterActivityLaunchOptions(activityOptions);
    }

    public void setClusterActivityLaunchOptions(ActivityOptions activityOptions) {
        this.mActivityOptions = activityOptions;
        updateNavigationActivity();
    }

    @Deprecated
    public void setClusterActivityState(String str, Bundle bundle) {
        setClusterActivityState(ClusterActivityState.fromBundle(bundle));
    }

    public void setClusterActivityState(ClusterActivityState clusterActivityState) {
        this.mActivityState = clusterActivityState;
        updateNavigationActivity();
    }

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("**" + getClass().getSimpleName() + "**");
        StringBuilder sb = new StringBuilder();
        sb.append("renderer binder: ");
        sb.append(this.mRendererBinder);
        printWriter.println(sb.toString());
        if (this.mRendererBinder != null) {
            printWriter.println("navigation renderer: " + this.mRendererBinder.mNavigationRenderer);
        }
        printWriter.println("navigation focus owner: " + getNavigationContextOwner());
        printWriter.println("activity options: " + this.mActivityOptions);
        printWriter.println("activity state: " + this.mActivityState);
        printWriter.println("current nav component: " + this.mNavigationComponent);
        printWriter.println("current nav packages: " + getNavigationContextOwner().mPackageNames);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class RendererBinder extends IInstrumentCluster.Stub {
        private final NavigationRenderer mNavigationRenderer;

        RendererBinder(NavigationRenderer navigationRenderer) {
            this.mNavigationRenderer = navigationRenderer;
        }

        @Override // android.car.cluster.renderer.IInstrumentCluster
        public IInstrumentClusterNavigation getNavigationService() throws RemoteException {
            return InstrumentClusterRenderingService.this.new NavigationBinder(this.mNavigationRenderer);
        }

        @Override // android.car.cluster.renderer.IInstrumentCluster
        public void setNavigationContextOwner(int r5, int r6) throws RemoteException {
            if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
                Log.d("CAR.L.CLUSTER", "Updating navigation ownership to uid: " + r5 + ", pid: " + r6);
            }
            synchronized (InstrumentClusterRenderingService.this.mLock) {
                InstrumentClusterRenderingService.this.mNavContextOwner = new ContextOwner(r5, r6, InstrumentClusterRenderingService.this.getPackageManager());
            }
            Handler handler = InstrumentClusterRenderingService.this.mUiHandler;
            final InstrumentClusterRenderingService instrumentClusterRenderingService = InstrumentClusterRenderingService.this;
            handler.post(new Runnable() { // from class: android.car.cluster.renderer.-$$Lambda$InstrumentClusterRenderingService$RendererBinder$uL1MjyliAr2ocdJWQR7h7xKCNDo
                @Override // java.lang.Runnable
                public final void run() {
                    instrumentClusterRenderingService.updateNavigationActivity();
                }
            });
        }

        /* renamed from: lambda$onKeyEvent$1$InstrumentClusterRenderingService$RendererBinder */
        public /* synthetic */ void m3x46024fd5(KeyEvent keyEvent) {
            InstrumentClusterRenderingService.this.onKeyEvent(keyEvent);
        }

        @Override // android.car.cluster.renderer.IInstrumentCluster
        public void onKeyEvent(final KeyEvent keyEvent) throws RemoteException {
            InstrumentClusterRenderingService.this.mUiHandler.post(new Runnable() { // from class: android.car.cluster.renderer.-$$Lambda$InstrumentClusterRenderingService$RendererBinder$JYIvQE6AHO4Hweem6UVjqlOMc0E
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m3x46024fd5(keyEvent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class NavigationBinder extends IInstrumentClusterNavigation.Stub {
        private final NavigationRenderer mNavigationRenderer;

        NavigationBinder(NavigationRenderer navigationRenderer) {
            this.mNavigationRenderer = navigationRenderer;
        }

        @Override // android.car.cluster.renderer.IInstrumentClusterNavigation
        public void onNavigationStateChanged(final Bundle bundle) throws RemoteException {
            InstrumentClusterRenderingService.this.assertClusterManagerPermission();
            assertContextOwnership();
            InstrumentClusterRenderingService.this.mUiHandler.post(new Runnable() { // from class: android.car.cluster.renderer.-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$AouD2VCy5QEXfLjDn2L7OgfQzow
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m2x49bb94eb(bundle);
                }
            });
        }

        /* renamed from: lambda$onNavigationStateChanged$0$InstrumentClusterRenderingService$NavigationBinder */
        public /* synthetic */ void m2x49bb94eb(Bundle bundle) {
            NavigationRenderer navigationRenderer = this.mNavigationRenderer;
            if (navigationRenderer != null) {
                navigationRenderer.onEvent(1, bundle);
                this.mNavigationRenderer.onNavigationStateChanged(bundle);
            }
        }

        @Override // android.car.cluster.renderer.IInstrumentClusterNavigation
        public CarNavigationInstrumentCluster getInstrumentClusterInfo() throws RemoteException {
            InstrumentClusterRenderingService.this.assertClusterManagerPermission();
            return (CarNavigationInstrumentCluster) InstrumentClusterRenderingService.this.runAndWaitResult(new Supplier() { // from class: android.car.cluster.renderer.-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$t81kYp25Quio7Jmj-_MKQt6a6bM
                @Override // java.util.function.Supplier
                public final Object get() {
                    return this.f$0.m1x919d1695();
                }
            });
        }

        /* renamed from: lambda$getInstrumentClusterInfo$1$InstrumentClusterRenderingService$NavigationBinder */
        public /* synthetic */ CarNavigationInstrumentCluster m1x919d1695() {
            return this.mNavigationRenderer.getNavigationProperties();
        }

        private void assertContextOwnership() {
            int callingUid = getCallingUid();
            int callingPid = getCallingPid();
            synchronized (InstrumentClusterRenderingService.this.mLock) {
                if (InstrumentClusterRenderingService.this.mNavContextOwner.mUid != callingUid || InstrumentClusterRenderingService.this.mNavContextOwner.mPid != callingPid) {
                    throw new IllegalStateException("Client {uid:" + callingUid + ", pid: " + callingPid + "} is not an owner of APP_FOCUS_TYPE_NAVIGATION " + InstrumentClusterRenderingService.this.mNavContextOwner);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void assertClusterManagerPermission() {
        if (checkCallingOrSelfPermission(Car.PERMISSION_CAR_NAVIGATION_MANAGER) != 0) {
            throw new SecurityException("requires android.car.permission.CAR_NAVIGATION_MANAGER");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <E> E runAndWaitResult(final Supplier<E> supplier) throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        this.mUiHandler.post(new Runnable() { // from class: android.car.cluster.renderer.-$$Lambda$InstrumentClusterRenderingService$JweI-cTA5lii-BX7H5cYtPD9N7U
            @Override // java.lang.Runnable
            public final void run() {
                InstrumentClusterRenderingService.lambda$runAndWaitResult$0(atomicReference, supplier, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
            return (E) atomicReference.get();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    static /* synthetic */ void lambda$runAndWaitResult$0(AtomicReference atomicReference, Supplier supplier, CountDownLatch countDownLatch) {
        atomicReference.set(supplier.get());
        countDownLatch.countDown();
    }

    public Bitmap getBitmap(Uri uri) {
        try {
        } catch (Throwable th) {
            Log.e("CAR.L.CLUSTER", "Unable to fetch uri: " + uri, th);
        }
        if (uri.getQueryParameter(BITMAP_QUERY_WIDTH).isEmpty() || uri.getQueryParameter(BITMAP_QUERY_HEIGHT).isEmpty()) {
            throw new IllegalArgumentException("Uri must have 'w' and 'h' query parameters");
        }
        ContextOwner navigationContextOwner = getNavigationContextOwner();
        if (navigationContextOwner == null) {
            Log.e("CAR.L.CLUSTER", "No context owner available while fetching: " + uri);
            return null;
        }
        String host = uri.getHost();
        if (!navigationContextOwner.mAuthorities.contains(host)) {
            Log.e("CAR.L.CLUSTER", "Uri points to an authority not handled by the current context owner: " + uri + " (valid authorities: " + navigationContextOwner.mAuthorities + ")");
            return null;
        }
        int userId = UserHandle.getUserId(navigationContextOwner.mUid);
        Uri uriBuild = uri.buildUpon().encodedAuthority(userId + "@" + host).build();
        if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
            Log.d("CAR.L.CLUSTER", "Requesting bitmap: " + uri);
        }
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = getContentResolver().openFileDescriptor(uriBuild, "r");
        if (parcelFileDescriptorOpenFileDescriptor != null) {
            Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            parcelFileDescriptorOpenFileDescriptor.close();
            return bitmapDecodeFileDescriptor;
        }
        Log.e("CAR.L.CLUSTER", "Failed to create pipe for uri string: " + uri);
        return null;
    }

    public Bitmap getBitmap(Uri uri, int r8, int r9) throws InvalidSizeException {
        if (r8 <= 0 || r9 <= 0) {
            throw new InvalidSizeException("Width and height must be > 0");
        }
        try {
            ContextOwner navigationContextOwner = getNavigationContextOwner();
            if (navigationContextOwner == null) {
                Log.e("CAR.L.CLUSTER", "No context owner available while fetching: " + uri);
                return null;
            }
            Uri uriBuild = uri.buildUpon().appendQueryParameter(BITMAP_QUERY_WIDTH, String.valueOf(r8)).appendQueryParameter(BITMAP_QUERY_HEIGHT, String.valueOf(r9)).build();
            String host = uriBuild.getHost();
            if (!navigationContextOwner.mAuthorities.contains(host)) {
                Log.e("CAR.L.CLUSTER", "Uri points to an authority not handled by the current context owner: " + uriBuild + " (valid authorities: " + navigationContextOwner.mAuthorities + ")");
                return null;
            }
            int userId = UserHandle.getUserId(navigationContextOwner.mUid);
            Uri uriBuild2 = uriBuild.buildUpon().encodedAuthority(userId + "@" + host).build();
            Bitmap bitmapCreateScaledBitmap = this.mCache.get(uriBuild.toString());
            if (bitmapCreateScaledBitmap == null) {
                if (Log.isLoggable("CAR.L.CLUSTER", 3)) {
                    Log.d("CAR.L.CLUSTER", "Requesting bitmap: " + uriBuild);
                }
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = getContentResolver().openFileDescriptor(uriBuild2, "r");
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return bitmapDecodeFileDescriptor;
                }
                Log.e("CAR.L.CLUSTER", "Failed to create pipe for uri string: " + uriBuild);
                if (bitmapCreateScaledBitmap.getWidth() != r8 || bitmapCreateScaledBitmap.getHeight() != r9) {
                    bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, r8, r9, true);
                }
                this.mCache.put(uriBuild.toString(), bitmapCreateScaledBitmap);
            }
            return bitmapCreateScaledBitmap;
        } catch (Throwable th) {
            Log.e("CAR.L.CLUSTER", "Unable to fetch uri: " + uri, th);
            return null;
        }
    }
}
