package android.car;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.ICarProperty;
import android.content.Context;
import android.os.IBinder;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class CarInfoManager implements CarManagerBase {
    public static final int BASIC_INFO_DRIVER_SEAT = 356516106;
    public static final int BASIC_INFO_EV_BATTERY_CAPACITY = 291504390;
    public static final int BASIC_INFO_EV_CONNECTOR_TYPES = 289472775;
    public static final int BASIC_INFO_EV_PORT_LOCATION = 289407241;
    public static final int BASIC_INFO_FUEL_CAPACITY = 291504388;
    public static final int BASIC_INFO_FUEL_DOOR_LOCATION = 289407240;
    public static final int BASIC_INFO_FUEL_TYPES = 289472773;
    public static final int BASIC_INFO_KEY_MANUFACTURER = 286261505;
    public static final int BASIC_INFO_KEY_MODEL = 286261506;
    public static final int BASIC_INFO_KEY_MODEL_YEAR = 289407235;
    public static final String BASIC_INFO_KEY_VEHICLE_ID = "android.car.vehicle-id";
    private static final boolean DBG = true;
    public static final int ID_DIAGNOSTIC_CONFIG_7010 = 561013250;
    public static final int ID_DIAGNOSTIC_CONFIG_7019 = 561013251;
    public static final int ID_DIAGNOSTIC_CONFIG_701A = 561013252;
    public static final int ID_DIAGNOSTIC_CONFIG_701B = 561013253;
    public static final int ID_DIAGNOSTIC_CONFIG_7038 = 561013263;
    public static final int ID_ECU_HW_NUMBER = 554721799;
    public static final int ID_ECU_SERIAL_NUMBER = 554721800;
    public static final int ID_ECU_SW_NUMBER = 554721798;
    public static final int ID_EXTERIOR_COLOR = 561013248;
    public static final int ID_SC = 561013261;
    public static final int ID_SK = 561013262;
    public static final int ID_SYSTEM_SUPPLIER_IDENTIFIER = 554721804;
    public static final int ID_UUID = 554721802;
    public static final int ID_VEHICLE_PART_NUMBER = 554721801;
    public static final int ID_VIN = 554721803;
    public static final int ID_Vehicle_VIN = 554721793;
    public static final String INFO_KEY_PRODUCT_CONFIGURATION = "android.car.product-config";
    private static final String TAG = "CarInfoManager";
    private final CarPropertyManager mCarPropertyMgr;
    private Context mcontext;

    @Deprecated
    public String getVehicleId() {
        return "";
    }

    public String getManufacturer() {
        CarPropertyValue property = this.mCarPropertyMgr.getProperty(String.class, 286261505, 0);
        return property != null ? (String) property.getValue() : "";
    }

    public String getModel() {
        CarPropertyValue property = this.mCarPropertyMgr.getProperty(String.class, 286261506, 0);
        return property != null ? (String) property.getValue() : "";
    }

    @Deprecated
    public String getModelYear() {
        int intProperty = this.mCarPropertyMgr.getIntProperty(289407235, 0);
        return intProperty == 0 ? "" : Integer.toString(intProperty);
    }

    public int getModelYearInInteger() {
        return this.mCarPropertyMgr.getIntProperty(289407235, 0);
    }

    public float getFuelCapacity() {
        return this.mCarPropertyMgr.getFloatProperty(291504388, 0);
    }

    public int[] getFuelTypes() {
        return this.mCarPropertyMgr.getIntArrayProperty(289472773, 0);
    }

    public float getEvBatteryCapacity() {
        CarPropertyValue property = this.mCarPropertyMgr.getProperty(Float.class, 291504390, 0);
        if (property != null) {
            return ((Float) property.getValue()).floatValue();
        }
        return 0.0f;
    }

    public int[] getEvConnectorTypes() {
        int[] intArrayProperty = this.mCarPropertyMgr.getIntArrayProperty(289472775, 0);
        int[] r0 = new int[intArrayProperty.length];
        for (int r2 = 0; r2 < intArrayProperty.length; r2++) {
            int r3 = intArrayProperty[r2];
            if (r3 != 101) {
                switch (r3) {
                    case 1:
                        r0[r2] = 1;
                        break;
                    case 2:
                        r0[r2] = 2;
                        break;
                    case 3:
                        r0[r2] = 11;
                        break;
                    case 4:
                        r0[r2] = 3;
                        break;
                    case 5:
                        r0[r2] = 4;
                        break;
                    case 6:
                        r0[r2] = 5;
                        break;
                    case 7:
                        r0[r2] = 6;
                        break;
                    case 8:
                        r0[r2] = 7;
                        break;
                    case 9:
                        r0[r2] = 8;
                        break;
                    case 10:
                        r0[r2] = 9;
                        break;
                    case 11:
                        r0[r2] = 10;
                        break;
                    default:
                        r0[r2] = 0;
                        break;
                }
            } else {
                r0[r2] = 101;
            }
        }
        return r0;
    }

    public int getDriverSeat() {
        return this.mCarPropertyMgr.getIntProperty(356516106, 0);
    }

    public int getEvPortLocation() {
        return this.mCarPropertyMgr.getIntProperty(289407241, 0);
    }

    public int getFuelDoorLocation() {
        return this.mCarPropertyMgr.getIntProperty(289407240, 0);
    }

    public String getSOCVersionCode() {
        return SystemProperties.get("ro.build.x9.version", "NA");
    }

    public String getCherySWVersionCode() {
        return SystemProperties.get("ro.build.chery.version", "NA");
    }

    public String getECUSerialNumber() throws CarNotConnectedException {
        if (Settings.System.getInt(this.mcontext.getContentResolver(), "settings_confirm", 0) == 0) {
            CarPropertyValue property = this.mCarPropertyMgr.getProperty(String.class, 554721800, 16777216);
            if (property != null) {
                return ((String) property.getValue()).trim();
            }
            return null;
        }
        return Settings.System.getString(this.mcontext.getContentResolver(), "HUID");
    }

    public String getVIN() throws CarNotConnectedException {
        if (Settings.System.getInt(this.mcontext.getContentResolver(), "settings_confirm", 0) == 0) {
            CarPropertyValue property = this.mCarPropertyMgr.getProperty(String.class, 554721803, 16777216);
            if (property != null) {
                return ((String) property.getValue()).trim();
            }
            return null;
        }
        return Settings.System.getString(this.mcontext.getContentResolver(), "VIN");
    }

    public <E> E getGlobalProperty(Class<E> cls, int r3) throws CarNotConnectedException {
        return (E) getProperty(cls, r3, 16777216);
    }

    public byte[] getByteProperty(int r3) throws CarNotConnectedException {
        CarPropertyValue property = this.mCarPropertyMgr.getProperty(byte[].class, r3, 16777216);
        Log.d(TAG, "getByteProperty_propId: " + YFVehiclePropertyIds.toString(r3) + ", value: " + Arrays.toString((byte[]) property.getValue()));
        return property != null ? (byte[]) property.getValue() : new byte[0];
    }

    public String getStringProperty(int r3) throws CarNotConnectedException {
        CarPropertyValue property = this.mCarPropertyMgr.getProperty(String.class, r3, 16777216);
        Log.d(TAG, "getStringProperty_propId: " + YFVehiclePropertyIds.toString(r3) + ", value: " + ((String) property.getValue()));
        if (property != null) {
            return ((String) property.getValue()).trim();
        }
        return null;
    }

    public <E> E getProperty(Class<E> cls, int r2, int r3) throws CarNotConnectedException {
        return this.mCarPropertyMgr.getProperty(cls, r2, r3).getValue();
    }

    public <E> void setGlobalProperty(Class<E> cls, int r3, E e) throws CarNotConnectedException {
        this.mCarPropertyMgr.setProperty(cls, r3, 16777216, e);
    }

    public void setByteProperty(int r3, byte[] bArr) throws CarNotConnectedException {
        this.mCarPropertyMgr.setProperty(byte[].class, r3, 16777216, bArr);
    }

    public void setStringProperty(int r3, String str) throws CarNotConnectedException {
        this.mCarPropertyMgr.setProperty(String.class, r3, 16777216, str);
    }

    CarInfoManager(IBinder iBinder, Context context) {
        this.mcontext = null;
        this.mCarPropertyMgr = new CarPropertyManager(ICarProperty.Stub.asInterface(iBinder), null);
        this.mcontext = context;
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        this.mCarPropertyMgr.onCarDisconnected();
    }
}
