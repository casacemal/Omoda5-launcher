.class public final Lcoil/request/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "ImageRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1057:1\n1#2:1058\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010M\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010M\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010M\u001a\u0004\u0018\u00010\u0013J\u00c7\u0001\u0010\u000e\u001a\u00020\u00002#\u0008\u0006\u0010N\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020R0O2#\u0008\u0006\u0010S\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020R0O28\u0008\u0006\u0010T\u001a2\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110V\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(W\u0012\u0004\u0012\u00020R0U28\u0008\u0006\u0010X\u001a2\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110Y\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(W\u0012\u0004\u0012\u00020R0UH\u0086\u0008J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010Z\u001a\u00020\u00002\u0006\u0010Z\u001a\u000204J\u000e\u00103\u001a\u00020\u00002\u0006\u0010Z\u001a\u000204J\u000e\u00105\u001a\u00020\u00002\u0006\u0010Z\u001a\u000204J\u000e\u00106\u001a\u00020\u00002\u0006\u0010Z\u001a\u000204J\u000e\u00107\u001a\u00020\u00002\u0006\u0010Z\u001a\u000204J\u001f\u0010 \u001a\u00020\u00002\u0012\u0010 \u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\"0[\"\u00020\"\u00a2\u0006\u0002\u0010\\J\u0014\u0010 \u001a\u00020\u00002\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0010\u0010^\u001a\u00020\u00002\u0008\u0008\u0001\u0010^\u001a\u00020<J\u001a\u0010^\u001a\u00020\u00002\u0008\u0008\u0001\u0010_\u001a\u00020<2\u0008\u0008\u0001\u0010`\u001a\u00020<J\u0016\u0010^\u001a\u00020\u00002\u0006\u0010_\u001a\u00020a2\u0006\u0010`\u001a\u00020aJ\u000e\u0010^\u001a\u00020\u00002\u0006\u0010^\u001a\u00020bJ\u000e\u0010^\u001a\u00020\u00002\u0006\u0010c\u001a\u00020GJ\u000e\u0010H\u001a\u00020\u00002\u0006\u0010H\u001a\u00020IJ\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J#\u0010\u001a\u001a\u00020\u0000\"\n\u0008\u0000\u0010d\u0018\u0001*\u00020\u00012\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u0002Hd0\u001cH\u0086\u0008J,\u0010\u001a\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010d*\u00020\u00012\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u0002Hd0\u001c2\u000c\u0010f\u001a\u0008\u0012\u0004\u0012\u0002Hd0\u001dJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010e\u001a\u00020\u001fJ\u000e\u0010)\u001a\u00020\u00002\u0006\u0010g\u001a\u00020*J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010g\u001a\u00020*J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010g\u001a\u00020*J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010g\u001a\u00020*J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010h\u001a\u000200J\u000e\u00101\u001a\u00020\u00002\u0006\u0010h\u001a\u000200J\u000e\u00102\u001a\u00020\u00002\u0006\u0010h\u001a\u000200J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020iJ\u0016\u0010j\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u00132\u0006\u0010k\u001a\u00020\u0013J\u0016\u0010l\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u00132\u0006\u0010k\u001a\u00020\u0013J\u000e\u0010m\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0013J$\u0010n\u001a\u00020\u0000\"\n\u0008\u0000\u0010d\u0018\u0001*\u00020\u00012\u0008\u0010n\u001a\u0004\u0018\u0001HdH\u0086\u0008\u00a2\u0006\u0002\u0010oJ/\u0010n\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010d*\u00020\u00012\u000e\u0010f\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002Hd0\u001d2\u0008\u0010n\u001a\u0004\u0018\u0001Hd\u00a2\u0006\u0002\u0010pJ\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020qJ\u0010\u0010:\u001a\u00020\u00002\u0008\u0010M\u001a\u0004\u0018\u00010\u0013J\u0010\u0010:\u001a\u00020\u00002\u0008\u0010M\u001a\u0004\u0018\u00010\u0011J\u0010\u0010r\u001a\u00020\u00002\u0008\u0008\u0001\u0010s\u001a\u00020<J\u0010\u0010r\u001a\u00020\u00002\u0008\u0010t\u001a\u0004\u0018\u00010?J\u0010\u0010u\u001a\u00020\u00002\u0008\u0008\u0001\u0010s\u001a\u00020<J\u0010\u0010u\u001a\u00020\u00002\u0008\u0010t\u001a\u0004\u0018\u00010?J\u0010\u0010v\u001a\u00020\u00002\u0008\u0008\u0001\u0010s\u001a\u00020<J\u0010\u0010v\u001a\u00020\u00002\u0008\u0010t\u001a\u0004\u0018\u00010?J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010w\u001a\u00020xJ|\u0010\u000c\u001a\u00020\u00002%\u0008\u0006\u0010N\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010?\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(r\u0012\u0004\u0012\u00020R0O2%\u0008\u0006\u0010T\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010?\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(u\u0012\u0004\u0012\u00020R0O2#\u0008\u0006\u0010X\u001a\u001d\u0012\u0013\u0012\u00110?\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(W\u0012\u0004\u0012\u00020R0OH\u0086\u0008J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u000e\u0010y\u001a\u00020\u00002\u0006\u0010g\u001a\u00020*J\u000e\u0010y\u001a\u00020\u00002\u0006\u0010z\u001a\u00020<J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010{\u001a\u00020$J\u0010\u0010D\u001a\u00020\u00002\u0008\u0010|\u001a\u0004\u0018\u00010}J\u0010\u0010D\u001a\u00020\u00002\u0008\u0010D\u001a\u0004\u0018\u00010EJ&\u0010~\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u00132\u0008\u0010k\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0013H\u0007J\u000e\u0010\u007f\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0013J\u000f\u00108\u001a\u00020\u00002\u0007\u00108\u001a\u00030\u0080\u0001J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0007\u0010\u0081\u0001\u001a\u00020\u0007J\t\u0010\u0082\u0001\u001a\u00020RH\u0002J\t\u0010\u0083\u0001\u001a\u00020RH\u0002J\t\u0010\u0084\u0001\u001a\u00020EH\u0002J\t\u0010\u0085\u0001\u001a\u00020GH\u0002J\t\u0010\u0086\u0001\u001a\u00020IH\u0002J\u0013\u0010\u0087\u0001\u001a\u00020\u00002\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u0001H\u0007J\u0013\u0010\u0089\u0001\u001a\u00020\u00002\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0007J\u0011\u0010{\u001a\u00020\u00002\u0007\u0010{\u001a\u00030\u008b\u0001H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u001a\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001d\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\'\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001d\u0012\u0004\u0012\u00020\u0001\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010,R\u0012\u0010-\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010,R\u000e\u0010.\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010;\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010=R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010@\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010=R\u0010\u0010A\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010B\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010=R\u0010\u0010C\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u0004\u0018\u00010EX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010F\u001a\u0004\u0018\u00010GX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010H\u001a\u0004\u0018\u00010IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010J\u001a\u0004\u0018\u00010EX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010K\u001a\u0004\u0018\u00010GX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010L\u001a\u0004\u0018\u00010IX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u008c\u0001"
    }
    d2 = {
        "Lcoil/request/ImageRequest$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "request",
        "Lcoil/request/ImageRequest;",
        "(Lcoil/request/ImageRequest;Landroid/content/Context;)V",
        "defaults",
        "Lcoil/request/DefaultRequestOptions;",
        "data",
        "target",
        "Lcoil/target/Target;",
        "listener",
        "Lcoil/request/ImageRequest$Listener;",
        "memoryCacheKey",
        "Lcoil/memory/MemoryCache$Key;",
        "diskCacheKey",
        "",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "colorSpace",
        "Landroid/graphics/ColorSpace;",
        "precision",
        "Lcoil/size/Precision;",
        "fetcherFactory",
        "Lkotlin/Pair;",
        "Lcoil/fetch/Fetcher$Factory;",
        "Ljava/lang/Class;",
        "decoderFactory",
        "Lcoil/decode/Decoder$Factory;",
        "transformations",
        "",
        "Lcoil/transform/Transformation;",
        "transitionFactory",
        "Lcoil/transition/Transition$Factory;",
        "headers",
        "Lokhttp3/Headers$Builder;",
        "tags",
        "",
        "allowConversionToBitmap",
        "",
        "allowHardware",
        "Ljava/lang/Boolean;",
        "allowRgb565",
        "premultipliedAlpha",
        "memoryCachePolicy",
        "Lcoil/request/CachePolicy;",
        "diskCachePolicy",
        "networkCachePolicy",
        "interceptorDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "fetcherDispatcher",
        "decoderDispatcher",
        "transformationDispatcher",
        "parameters",
        "Lcoil/request/Parameters$Builder;",
        "placeholderMemoryCacheKey",
        "placeholderResId",
        "",
        "Ljava/lang/Integer;",
        "placeholderDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "errorResId",
        "errorDrawable",
        "fallbackResId",
        "fallbackDrawable",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "sizeResolver",
        "Lcoil/size/SizeResolver;",
        "scale",
        "Lcoil/size/Scale;",
        "resolvedLifecycle",
        "resolvedSizeResolver",
        "resolvedScale",
        "key",
        "onStart",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "onCancel",
        "onError",
        "Lkotlin/Function2;",
        "Lcoil/request/ErrorResult;",
        "result",
        "onSuccess",
        "Lcoil/request/SuccessResult;",
        "dispatcher",
        "",
        "([Lcoil/transform/Transformation;)Lcoil/request/ImageRequest$Builder;",
        "config",
        "size",
        "width",
        "height",
        "Lcoil/size/Dimension;",
        "Lcoil/size/Size;",
        "resolver",
        "T",
        "factory",
        "type",
        "enable",
        "policy",
        "Lokhttp3/Headers;",
        "addHeader",
        "value",
        "setHeader",
        "removeHeader",
        "tag",
        "(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;",
        "(Ljava/lang/Class;Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;",
        "Lcoil/request/Tags;",
        "placeholder",
        "drawableResId",
        "drawable",
        "error",
        "fallback",
        "imageView",
        "Landroid/widget/ImageView;",
        "crossfade",
        "durationMillis",
        "transition",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "setParameter",
        "removeParameter",
        "Lcoil/request/Parameters;",
        "build",
        "resetResolvedValues",
        "resetResolvedScale",
        "resolveLifecycle",
        "resolveSizeResolver",
        "resolveScale",
        "fetcher",
        "Lcoil/fetch/Fetcher;",
        "decoder",
        "Lcoil/decode/Decoder;",
        "Lcoil/transition/Transition;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private allowConversionToBitmap:Z

.field private allowHardware:Ljava/lang/Boolean;

.field private allowRgb565:Ljava/lang/Boolean;

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private colorSpace:Landroid/graphics/ColorSpace;

.field private final context:Landroid/content/Context;

.field private data:Ljava/lang/Object;

.field private decoderDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private decoderFactory:Lcoil/decode/Decoder$Factory;

.field private defaults:Lcoil/request/DefaultRequestOptions;

.field private diskCacheKey:Ljava/lang/String;

.field private diskCachePolicy:Lcoil/request/CachePolicy;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResId:Ljava/lang/Integer;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResId:Ljava/lang/Integer;

.field private fetcherDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private fetcherFactory:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "+",
            "Lcoil/fetch/Fetcher$Factory<",
            "*>;+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private headers:Lokhttp3/Headers$Builder;

.field private interceptorDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private listener:Lcoil/request/ImageRequest$Listener;

.field private memoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field private memoryCachePolicy:Lcoil/request/CachePolicy;

.field private networkCachePolicy:Lcoil/request/CachePolicy;

.field private parameters:Lcoil/request/Parameters$Builder;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field private placeholderResId:Ljava/lang/Integer;

.field private precision:Lcoil/size/Precision;

.field private premultipliedAlpha:Z

.field private resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

.field private resolvedScale:Lcoil/size/Scale;

.field private resolvedSizeResolver:Lcoil/size/SizeResolver;

.field private scale:Lcoil/size/Scale;

.field private sizeResolver:Lcoil/size/SizeResolver;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private target:Lcoil/target/Target;

.field private transformationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcoil/transform/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private transitionFactory:Lcoil/transition/Transition$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 349
    invoke-static {}, Lcoil/util/-Requests;->getDEFAULT_REQUEST_OPTIONS()Lcoil/request/DefaultRequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 351
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 352
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 353
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 354
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->diskCacheKey:Ljava/lang/String;

    .line 355
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 356
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 357
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    .line 358
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fetcherFactory:Lkotlin/Pair;

    .line 359
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->decoderFactory:Lcoil/decode/Decoder$Factory;

    .line 360
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 361
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->transitionFactory:Lcoil/transition/Transition$Factory;

    .line 362
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 363
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->tags:Ljava/util/Map;

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->allowConversionToBitmap:Z

    .line 365
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    .line 366
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    .line 367
    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    .line 368
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 369
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 370
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 371
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->interceptorDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 372
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fetcherDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 373
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->decoderDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 374
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->transformationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 375
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    .line 376
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 377
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    .line 378
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 379
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    .line 380
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 381
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    .line 382
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 383
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 384
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 385
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    .line 386
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 387
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 388
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method public constructor <init>(Lcoil/request/ImageRequest;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcoil/request/ImageRequest$Builder;-><init>(Lcoil/request/ImageRequest;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil/request/ImageRequest;Landroid/content/Context;)V
    .locals 1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 394
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefaults()Lcoil/request/DefaultRequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 395
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 396
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 397
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 398
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 399
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->diskCacheKey:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 401
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 402
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getPrecision()Lcoil/size/Precision;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    .line 403
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getFetcherFactory()Lkotlin/Pair;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fetcherFactory:Lkotlin/Pair;

    .line 404
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDecoderFactory()Lcoil/decode/Decoder$Factory;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->decoderFactory:Lcoil/decode/Decoder$Factory;

    .line 405
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 406
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getTransitionFactory()Lcoil/transition/Transition$Factory;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transitionFactory:Lcoil/transition/Transition$Factory;

    .line 407
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 408
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTags()Lcoil/request/Tags;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/Tags;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->tags:Ljava/util/Map;

    .line 409
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowConversionToBitmap()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->allowConversionToBitmap:Z

    .line 410
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getAllowHardware()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    .line 411
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getAllowRgb565()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    .line 412
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPremultipliedAlpha()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    .line 413
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 414
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 415
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 416
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getInterceptorDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->interceptorDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 417
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getFetcherDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fetcherDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 418
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getDecoderDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->decoderDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 419
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getTransformationDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transformationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 420
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/Parameters;->newBuilder()Lcoil/request/Parameters$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    .line 421
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 422
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getPlaceholderResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    .line 423
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getPlaceholderDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 424
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getErrorResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    .line 425
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getErrorDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 426
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getFallbackResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    .line 427
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getFallbackDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 428
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 429
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 430
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getScale()Lcoil/size/Scale;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    .line 433
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 434
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 435
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 436
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 438
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 439
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 440
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcoil/request/ImageRequest;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 392
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 391
    :cond_0
    invoke-direct {p0, p1, p2}, Lcoil/request/ImageRequest$Builder;-><init>(Lcoil/request/ImageRequest;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic listener$default(Lcoil/request/ImageRequest$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 491
    sget-object p1, Lcoil/request/ImageRequest$Builder$listener$1;->INSTANCE:Lcoil/request/ImageRequest$Builder$listener$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 492
    sget-object p2, Lcoil/request/ImageRequest$Builder$listener$2;->INSTANCE:Lcoil/request/ImageRequest$Builder$listener$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 493
    sget-object p3, Lcoil/request/ImageRequest$Builder$listener$3;->INSTANCE:Lcoil/request/ImageRequest$Builder$listener$3;

    check-cast p3, Lkotlin/jvm/functions/Function2;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 494
    sget-object p4, Lcoil/request/ImageRequest$Builder$listener$4;->INSTANCE:Lcoil/request/ImageRequest$Builder$listener$4;

    check-cast p4, Lkotlin/jvm/functions/Function2;

    .line 495
    :cond_3
    new-instance p5, Lcoil/request/ImageRequest$Builder$listener$5;

    invoke-direct {p5, p1, p2, p3, p4}, Lcoil/request/ImageRequest$Builder$listener$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    check-cast p5, Lcoil/request/ImageRequest$Listener;

    invoke-virtual {p0, p5}, Lcoil/request/ImageRequest$Builder;->listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final resetResolvedScale()V
    .locals 1

    const/4 v0, 0x0

    .line 1001
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method private final resetResolvedValues()V
    .locals 1

    const/4 v0, 0x0

    .line 994
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 995
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 996
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method private final resolveLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 2

    .line 1005
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 1006
    instance-of v1, v0, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 1007
    :goto_0
    invoke-static {p0}, Lcoil/util/-Contexts;->getLifecycle(Landroid/content/Context;)Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcoil/request/GlobalLifecycle;->INSTANCE:Lcoil/request/GlobalLifecycle;

    check-cast p0, Landroidx/lifecycle/Lifecycle;

    :cond_1
    return-object p0
.end method

.method private final resolveScale()Lcoil/size/Scale;
    .locals 3

    .line 1027
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    instance-of v1, v0, Lcoil/size/ViewSizeResolver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcoil/size/ViewSizeResolver;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    instance-of v0, p0, Lcoil/target/ViewTarget;

    if-eqz v0, :cond_3

    check-cast p0, Lcoil/target/ViewTarget;

    goto :goto_2

    :cond_3
    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v2

    .line 1028
    :cond_4
    :goto_3
    instance-of p0, v2, Landroid/widget/ImageView;

    if-eqz p0, :cond_5

    .line 1029
    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2}, Lcoil/util/-Utils;->getScale(Landroid/widget/ImageView;)Lcoil/size/Scale;

    move-result-object p0

    return-object p0

    .line 1031
    :cond_5
    sget-object p0, Lcoil/size/Scale;->FIT:Lcoil/size/Scale;

    return-object p0
.end method

.method private final resolveSizeResolver()Lcoil/size/SizeResolver;
    .locals 3

    .line 1011
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 1012
    instance-of v1, v0, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_2

    .line 1014
    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p0

    .line 1015
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_1

    .line 1016
    :cond_0
    sget-object p0, Lcoil/size/Size;->ORIGINAL:Lcoil/size/Size;

    invoke-static {p0}, Lcoil/size/SizeResolvers;->create(Lcoil/size/Size;)Lcoil/size/SizeResolver;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1018
    invoke-static {p0, v2, v0, v1}, Lcoil/size/ViewSizeResolvers;->create$default(Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/ViewSizeResolver;

    move-result-object p0

    check-cast p0, Lcoil/size/SizeResolver;

    return-object p0

    .line 1022
    :cond_2
    new-instance v0, Lcoil/size/DisplaySizeResolver;

    iget-object p0, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcoil/size/DisplaySizeResolver;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcoil/size/SizeResolver;

    return-object v0
.end method

.method public static synthetic setParameter$default(Lcoil/request/ImageRequest$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    .line 912
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 911
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcoil/request/ImageRequest$Builder;->setParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic target$default(Lcoil/request/ImageRequest$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 846
    sget-object p1, Lcoil/request/ImageRequest$Builder$target$1;->INSTANCE:Lcoil/request/ImageRequest$Builder$target$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 847
    sget-object p2, Lcoil/request/ImageRequest$Builder$target$2;->INSTANCE:Lcoil/request/ImageRequest$Builder$target$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 848
    sget-object p3, Lcoil/request/ImageRequest$Builder$target$3;->INSTANCE:Lcoil/request/ImageRequest$Builder$target$3;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 849
    :cond_2
    new-instance p4, Lcoil/request/ImageRequest$Builder$target$4;

    invoke-direct {p4, p1, p2, p3}, Lcoil/request/ImageRequest$Builder$target$4;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast p4, Lcoil/target/Target;

    invoke-virtual {p0, p4}, Lcoil/request/ImageRequest$Builder;->target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 728
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 729
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public final allowConversionToBitmap(Z)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 664
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 665
    iput-boolean p1, p0, Lcoil/request/ImageRequest$Builder;->allowConversionToBitmap:Z

    return-object p0
.end method

.method public final allowHardware(Z)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 671
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 672
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final allowRgb565(Z)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 678
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 679
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 562
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 563
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public final build()Lcoil/request/ImageRequest;
    .locals 72

    move-object/from16 v0, p0

    .line 946
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 947
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    :cond_0
    move-object v3, v1

    .line 948
    iget-object v4, v0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 949
    iget-object v5, v0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 950
    iget-object v6, v0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 951
    iget-object v7, v0, Lcoil/request/ImageRequest$Builder;->diskCacheKey:Ljava/lang/String;

    .line 952
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :cond_1
    move-object v8, v1

    .line 953
    iget-object v9, v0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 954
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getPrecision()Lcoil/size/Precision;

    move-result-object v1

    :cond_2
    move-object v10, v1

    .line 955
    iget-object v11, v0, Lcoil/request/ImageRequest$Builder;->fetcherFactory:Lkotlin/Pair;

    .line 956
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->decoderFactory:Lcoil/decode/Decoder$Factory;

    .line 957
    iget-object v13, v0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 958
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->transitionFactory:Lcoil/transition/Transition$Factory;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getTransitionFactory()Lcoil/transition/Transition$Factory;

    move-result-object v1

    :cond_3
    move-object v14, v1

    .line 959
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcoil/util/-Utils;->orEmpty(Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v16

    .line 960
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->tags:Ljava/util/Map;

    if-eqz v1, :cond_5

    sget-object v15, Lcoil/request/Tags;->Companion:Lcoil/request/Tags$Companion;

    invoke-virtual {v15, v1}, Lcoil/request/Tags$Companion;->from(Ljava/util/Map;)Lcoil/request/Tags;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcoil/util/-Utils;->orEmpty(Lcoil/request/Tags;)Lcoil/request/Tags;

    move-result-object v18

    .line 961
    iget-boolean v15, v0, Lcoil/request/ImageRequest$Builder;->allowConversionToBitmap:Z

    .line 962
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getAllowHardware()Z

    move-result v1

    :goto_2
    move/from16 v19, v1

    .line 963
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getAllowRgb565()Z

    move-result v1

    :goto_3
    move/from16 v20, v1

    .line 964
    iget-boolean v1, v0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    move/from16 v21, v1

    .line 965
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    if-nez v1, :cond_8

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    :cond_8
    move-object/from16 v22, v1

    .line 966
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    if-nez v1, :cond_9

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    :cond_9
    move-object/from16 v23, v1

    .line 967
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    :cond_a
    move-object/from16 v24, v1

    .line 968
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->interceptorDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez v1, :cond_b

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getInterceptorDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    :cond_b
    move-object/from16 v25, v1

    .line 969
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->fetcherDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getFetcherDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    :cond_c
    move-object/from16 v26, v1

    .line 970
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->decoderDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez v1, :cond_d

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getDecoderDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    :cond_d
    move-object/from16 v27, v1

    .line 971
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->transformationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez v1, :cond_e

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getTransformationDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    :cond_e
    move-object/from16 v28, v1

    .line 972
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-nez v1, :cond_f

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    if-nez v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcoil/request/ImageRequest$Builder;->resolveLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    :cond_f
    move-object/from16 v29, v1

    .line 973
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    if-nez v1, :cond_10

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    if-nez v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcoil/request/ImageRequest$Builder;->resolveSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v1

    :cond_10
    move-object/from16 v30, v1

    .line 974
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    if-nez v1, :cond_11

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    if-nez v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcoil/request/ImageRequest$Builder;->resolveScale()Lcoil/size/Scale;

    move-result-object v1

    :cond_11
    move-object/from16 v42, v1

    .line 975
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcoil/request/Parameters$Builder;->build()Lcoil/request/Parameters;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_4

    :cond_12
    const/16 v17, 0x0

    :goto_4
    invoke-static/range {v17 .. v17}, Lcoil/util/-Utils;->orEmpty(Lcoil/request/Parameters;)Lcoil/request/Parameters;

    move-result-object v31

    .line 976
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    move-object/from16 v32, v1

    .line 977
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    move-object/from16 v33, v1

    .line 978
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v1

    .line 979
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    move-object/from16 v35, v1

    .line 980
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v1

    .line 981
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    move-object/from16 v37, v1

    .line 982
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v38, v1

    .line 983
    new-instance v43, Lcoil/request/DefinedRequestOptions;

    move-object/from16 v39, v43

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    move/from16 v17, v15

    iget-object v15, v0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    move-object/from16 v59, v14

    iget-object v14, v0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    move-object/from16 v60, v13

    .line 984
    iget-object v13, v0, Lcoil/request/ImageRequest$Builder;->interceptorDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v61, v12

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->fetcherDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v62, v11

    iget-object v11, v0, Lcoil/request/ImageRequest$Builder;->decoderDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v63, v10

    .line 985
    iget-object v10, v0, Lcoil/request/ImageRequest$Builder;->transformationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v64, v9

    iget-object v9, v0, Lcoil/request/ImageRequest$Builder;->transitionFactory:Lcoil/transition/Transition$Factory;

    move-object/from16 v65, v8

    iget-object v8, v0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    move-object/from16 v66, v7

    iget-object v7, v0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v67, v6

    .line 986
    iget-object v6, v0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    move-object/from16 v68, v5

    iget-object v5, v0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    move-object/from16 v69, v4

    iget-object v4, v0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v70, v3

    iget-object v3, v0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v71, v2

    .line 987
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v44, v1

    move-object/from16 v45, v15

    move-object/from16 v46, v14

    move-object/from16 v47, v13

    move-object/from16 v48, v12

    move-object/from16 v49, v11

    move-object/from16 v50, v10

    move-object/from16 v51, v9

    move-object/from16 v52, v8

    move-object/from16 v53, v7

    move-object/from16 v54, v6

    move-object/from16 v55, v5

    move-object/from16 v56, v4

    move-object/from16 v57, v3

    move-object/from16 v58, v2

    .line 983
    invoke-direct/range {v43 .. v58}, Lcoil/request/DefinedRequestOptions;-><init>(Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition$Factory;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    .line 988
    iget-object v0, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    move-object/from16 v40, v0

    .line 945
    new-instance v0, Lcoil/request/ImageRequest;

    move-object v1, v0

    const/16 v41, 0x0

    move-object/from16 v2, v71

    move-object/from16 v3, v70

    move-object/from16 v4, v69

    move-object/from16 v5, v68

    move-object/from16 v6, v67

    move-object/from16 v7, v66

    move-object/from16 v8, v65

    move-object/from16 v9, v64

    move-object/from16 v10, v63

    move-object/from16 v11, v62

    move-object/from16 v12, v61

    move-object/from16 v13, v60

    move-object/from16 v14, v59

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v42

    invoke-direct/range {v1 .. v41}, Lcoil/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Precision;Lkotlin/Pair;Lcoil/decode/Decoder$Factory;Ljava/util/List;Lcoil/transition/Transition$Factory;Lokhttp3/Headers;Lcoil/request/Tags;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lcoil/request/Parameters;Lcoil/memory/MemoryCache$Key;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final colorSpace(Landroid/graphics/ColorSpace;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 572
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 573
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public final crossfade(I)Lcoil/request/ImageRequest$Builder;
    .locals 4

    .line 872
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    if-lez p1, :cond_0

    .line 874
    new-instance v0, Lcoil/transition/CrossfadeTransition$Factory;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcoil/transition/CrossfadeTransition$Factory;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcoil/transition/Transition$Factory;

    goto :goto_0

    .line 876
    :cond_0
    sget-object v0, Lcoil/transition/Transition$Factory;->NONE:Lcoil/transition/Transition$Factory;

    .line 878
    :goto_0
    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->transitionFactory(Lcoil/transition/Transition$Factory;)Lcoil/request/ImageRequest$Builder;

    return-object p0
.end method

.method public final crossfade(Z)Lcoil/request/ImageRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 867
    :goto_0
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->crossfade(I)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 458
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 459
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final decoder(Lcoil/decode/Decoder;)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Migrate to \'decoderFactory\'."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "decoderFactory { _, _, _ -> decoder }"
            imports = {}
        .end subannotation
    .end annotation

    .line 1047
    invoke-static {}, Lcoil/util/-Utils;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final decoderDispatcher(Lkotlinx/coroutines/CoroutineDispatcher;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 535
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 536
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->decoderDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public final decoderFactory(Lcoil/decode/Decoder$Factory;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 654
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 655
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->decoderFactory:Lcoil/decode/Decoder$Factory;

    return-object p0
.end method

.method public final defaults(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 936
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 937
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 938
    invoke-direct {p0}, Lcoil/request/ImageRequest$Builder;->resetResolvedScale()V

    return-object p0
.end method

.method public final diskCacheKey(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 483
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 484
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->diskCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public final diskCachePolicy(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 703
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 704
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    return-object p0
.end method

.method public final dispatcher(Lkotlinx/coroutines/CoroutineDispatcher;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 512
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 513
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fetcherDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 514
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->decoderDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 515
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->transformationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public final error(I)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 808
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 810
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 816
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 817
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 818
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final fallback(I)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 824
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 825
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 826
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final fallback(Landroid/graphics/drawable/Drawable;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 832
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 833
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 834
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final fetcher(Lcoil/fetch/Fetcher;)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Migrate to \'fetcherFactory\'."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "fetcherFactory<Any> { _, _, _ -> fetcher }"
            imports = {}
        .end subannotation
    .end annotation

    .line 1040
    invoke-static {}, Lcoil/util/-Utils;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final fetcherDispatcher(Lkotlinx/coroutines/CoroutineDispatcher;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 528
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 529
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fetcherDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public final synthetic fetcherFactory(Lcoil/fetch/Fetcher$Factory;)Lcoil/request/ImageRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil/fetch/Fetcher$Factory<",
            "TT;>;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 636
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcoil/request/ImageRequest$Builder;->fetcherFactory(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final fetcherFactory(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil/fetch/Fetcher$Factory<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    .line 644
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 645
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fetcherFactory:Lkotlin/Pair;

    return-object p0
.end method

.method public final headers(Lokhttp3/Headers;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 719
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 720
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public final interceptorDispatcher(Lkotlinx/coroutines/CoroutineDispatcher;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 521
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 522
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->interceptorDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public final lifecycle(Landroidx/lifecycle/Lifecycle;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 902
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 903
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method

.method public final lifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 891
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->lifecycle(Landroidx/lifecycle/Lifecycle;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 505
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 506
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    return-object p0
.end method

.method public final listener(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcoil/request/ImageRequest;",
            "-",
            "Lcoil/request/ErrorResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcoil/request/ImageRequest;",
            "-",
            "Lcoil/request/SuccessResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    .line 495
    new-instance v0, Lcoil/request/ImageRequest$Builder$listener$5;

    invoke-direct {v0, p1, p2, p3, p4}, Lcoil/request/ImageRequest$Builder$listener$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lcoil/request/ImageRequest$Listener;

    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final memoryCacheKey(Lcoil/memory/MemoryCache$Key;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 474
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 475
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    return-object p0
.end method

.method public final memoryCacheKey(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 467
    new-instance v1, Lcoil/memory/MemoryCache$Key;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2, v0}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->memoryCacheKey(Lcoil/memory/MemoryCache$Key;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final memoryCachePolicy(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 696
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 697
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    return-object p0
.end method

.method public final networkCachePolicy(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 712
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 713
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-object p0
.end method

.method public final parameters(Lcoil/request/Parameters;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 929
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 930
    invoke-virtual {p1}, Lcoil/request/Parameters;->newBuilder()Lcoil/request/Parameters$Builder;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    return-object p0
.end method

.method public final placeholder(I)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 792
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 793
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 794
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 800
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 801
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 802
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final placeholderMemoryCacheKey(Lcoil/memory/MemoryCache$Key;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 785
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 786
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    return-object p0
.end method

.method public final placeholderMemoryCacheKey(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 778
    new-instance v1, Lcoil/memory/MemoryCache$Key;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2, v0}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey(Lcoil/memory/MemoryCache$Key;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final precision(Lcoil/size/Precision;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 625
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 626
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    return-object p0
.end method

.method public final premultipliedAlpha(Z)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 689
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 690
    iput-boolean p1, p0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    return-object p0
.end method

.method public final removeHeader(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 744
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 745
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_0
    return-object p0
.end method

.method public final removeParameter(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 922
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 923
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcoil/request/Parameters$Builder;->remove(Ljava/lang/String;)Lcoil/request/Parameters$Builder;

    :cond_0
    return-object p0
.end method

.method public final scale(Lcoil/size/Scale;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 610
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 611
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    return-object p0
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 737
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 738
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcoil/request/ImageRequest$Builder;->setParameter$default(Lcoil/request/ImageRequest$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 912
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 913
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lcoil/request/Parameters$Builder;

    invoke-direct {v0}, Lcoil/request/Parameters$Builder;-><init>()V

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    .line 914
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcoil/request/Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcoil/request/Parameters$Builder;

    return-object p0
.end method

.method public final size(I)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 579
    invoke-virtual {p0, p1, p1}, Lcoil/request/ImageRequest$Builder;->size(II)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final size(II)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 584
    invoke-static {p1, p2}, Lcoil/size/-Sizes;->Size(II)Lcoil/size/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->size(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final size(Lcoil/size/Dimension;Lcoil/size/Dimension;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 589
    new-instance v0, Lcoil/size/Size;

    invoke-direct {v0, p1, p2}, Lcoil/size/Size;-><init>(Lcoil/size/Dimension;Lcoil/size/Dimension;)V

    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->size(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final size(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 594
    invoke-static {p1}, Lcoil/size/SizeResolvers;->create(Lcoil/size/Size;)Lcoil/size/SizeResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->size(Lcoil/size/SizeResolver;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final size(Lcoil/size/SizeResolver;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 599
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 600
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 601
    invoke-direct {p0}, Lcoil/request/ImageRequest$Builder;->resetResolvedValues()V

    return-object p0
.end method

.method public final tag(Ljava/lang/Class;Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    .line 756
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    if-nez p2, :cond_0

    .line 758
    iget-object p2, p0, Lcoil/request/ImageRequest$Builder;->tags:Ljava/util/Map;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->tags:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->tags:Ljava/util/Map;

    .line 761
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final synthetic tag(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 751
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcoil/request/ImageRequest$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final tags(Lcoil/request/Tags;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 768
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 769
    invoke-virtual {p1}, Lcoil/request/Tags;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public final target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 840
    new-instance v0, Lcoil/target/ImageViewTarget;

    invoke-direct {v0, p1}, Lcoil/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    check-cast v0, Lcoil/target/Target;

    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 858
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 859
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 860
    invoke-direct {p0}, Lcoil/request/ImageRequest$Builder;->resetResolvedValues()V

    return-object p0
.end method

.method public final target(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    .line 849
    new-instance v0, Lcoil/request/ImageRequest$Builder$target$4;

    invoke-direct {v0, p1, p2, p3}, Lcoil/request/ImageRequest$Builder$target$4;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lcoil/target/Target;

    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final transformationDispatcher(Lkotlinx/coroutines/CoroutineDispatcher;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 542
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 543
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->transformationDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public final transformations(Ljava/util/List;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcoil/transform/Transformation;",
            ">;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    .line 555
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 556
    invoke-static {p1}, Lcoil/util/-Collections;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    return-object p0
.end method

.method public final varargs transformations([Lcoil/transform/Transformation;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 550
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->transformations(Ljava/util/List;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final transition(Lcoil/transition/Transition;)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Migrate to \'transitionFactory\'."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "transitionFactory { _, _ -> transition }"
            imports = {}
        .end subannotation
    .end annotation

    .line 1054
    invoke-static {}, Lcoil/util/-Utils;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final transitionFactory(Lcoil/transition/Transition$Factory;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 884
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 885
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->transitionFactory:Lcoil/transition/Transition$Factory;

    return-object p0
.end method
