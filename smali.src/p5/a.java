package p5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.xiaomi.account.privacy_data.android_id.AndroidIdGetter;
import com.xiaomi.account.privacy_data.bluetooth_address.BluetoothAddressGetter;
import com.xiaomi.account.privacy_data.bluetooth_name.BluetoothNameGetter;
import com.xiaomi.account.privacy_data.bssid.BSSIDGetter;
import com.xiaomi.account.privacy_data.configured_ssids.ConfiguredSSIDsGetter;
import com.xiaomi.account.privacy_data.device_id.DeviceIdGetter;
import com.xiaomi.account.privacy_data.iccid.ICCIDGetter;
import com.xiaomi.account.privacy_data.imsi.IMSIGetter;
import com.xiaomi.account.privacy_data.lib.PrivacyDataException;
import com.xiaomi.account.privacy_data.line_1_number.Line1NumberGetter;
import com.xiaomi.account.privacy_data.mac_address.MacAddressGetter;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import com.xiaomi.account.privacy_data.mccmnc.MCCMNCGetter;
import com.xiaomi.account.privacy_data.miui_device_id.MiuiDeviceIdGetter;
import com.xiaomi.account.privacy_data.mobile_data_enable.MobileDataEnableGetter;
import com.xiaomi.account.privacy_data.network_mccmnc.NetworkMCCMNCGetter;
import com.xiaomi.account.privacy_data.oaid.OAIDGetter;
import com.xiaomi.account.privacy_data.sim_in_service.SimInServiceGetter;
import com.xiaomi.account.privacy_data.ssid.SSIDGetter;
import com.xiaomi.account.privacy_data.sub_id.SubIdGetter;
import java.util.HashMap;
import java.util.Map;

public class a
{
  private static final Map<String, o5.a> a;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    try
    {
      OAIDGetter localOAIDGetter = new com/xiaomi/account/privacy_data/oaid/OAIDGetter;
      localOAIDGetter.<init>();
      localHashMap.put(PrivacyDataType.OAID.name, localOAIDGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError1)
    {
      Log.e("PrivacyDataMaster", "OAID privacy-data-getter not defined");
    }
    try
    {
      AndroidIdGetter localAndroidIdGetter = new com/xiaomi/account/privacy_data/android_id/AndroidIdGetter;
      localAndroidIdGetter.<init>();
      a.put(PrivacyDataType.ANDROID_ID.name, localAndroidIdGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError2)
    {
      Log.e("PrivacyDataMaster", "ANDROID_ID privacy-data-getter not defined");
    }
    try
    {
      DeviceIdGetter localDeviceIdGetter = new com/xiaomi/account/privacy_data/device_id/DeviceIdGetter;
      localDeviceIdGetter.<init>();
      a.put(PrivacyDataType.DEVICE_ID.name, localDeviceIdGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError3)
    {
      Log.e("PrivacyDataMaster", "device-id privacy-data-getter not defined");
    }
    try
    {
      MiuiDeviceIdGetter localMiuiDeviceIdGetter = new com/xiaomi/account/privacy_data/miui_device_id/MiuiDeviceIdGetter;
      localMiuiDeviceIdGetter.<init>();
      a.put(PrivacyDataType.MIUI_DEVICE_ID.name, localMiuiDeviceIdGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError4)
    {
      Log.e("PrivacyDataMaster", "miui-device-id privacy-data-getter not defined");
    }
    try
    {
      BluetoothNameGetter localBluetoothNameGetter = new com/xiaomi/account/privacy_data/bluetooth_name/BluetoothNameGetter;
      localBluetoothNameGetter.<init>();
      a.put(PrivacyDataType.BLUETOOTH_NAME.name, localBluetoothNameGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError5)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data bluetooth-name-getter not defined");
    }
    try
    {
      BluetoothAddressGetter localBluetoothAddressGetter = new com/xiaomi/account/privacy_data/bluetooth_address/BluetoothAddressGetter;
      localBluetoothAddressGetter.<init>();
      a.put(PrivacyDataType.BLUETOOTH_ADDRESS.name, localBluetoothAddressGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError6)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data bluetooth-address-getter not defined");
    }
    try
    {
      MacAddressGetter localMacAddressGetter = new com/xiaomi/account/privacy_data/mac_address/MacAddressGetter;
      localMacAddressGetter.<init>();
      a.put(PrivacyDataType.MAC_ADDRESS.name, localMacAddressGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError7)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data mac-address-getter not defined");
    }
    try
    {
      SSIDGetter localSSIDGetter = new com/xiaomi/account/privacy_data/ssid/SSIDGetter;
      localSSIDGetter.<init>();
      a.put(PrivacyDataType.SSID.name, localSSIDGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError8)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data ssid-getter not defined");
    }
    try
    {
      BSSIDGetter localBSSIDGetter = new com/xiaomi/account/privacy_data/bssid/BSSIDGetter;
      localBSSIDGetter.<init>();
      a.put(PrivacyDataType.BSSID.name, localBSSIDGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError9)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data bssid-getter not defined");
    }
    try
    {
      ConfiguredSSIDsGetter localConfiguredSSIDsGetter = new com/xiaomi/account/privacy_data/configured_ssids/ConfiguredSSIDsGetter;
      localConfiguredSSIDsGetter.<init>();
      a.put(PrivacyDataType.CONFIGURED_SSIDS.name, localConfiguredSSIDsGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError10)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data configured-ssids-getter not defined");
    }
    try
    {
      ICCIDGetter localICCIDGetter = new com/xiaomi/account/privacy_data/iccid/ICCIDGetter;
      localICCIDGetter.<init>();
      a.put(PrivacyDataType.ICCID.name, localICCIDGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError11)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data iccid-getter not defined");
    }
    try
    {
      IMSIGetter localIMSIGetter = new com/xiaomi/account/privacy_data/imsi/IMSIGetter;
      localIMSIGetter.<init>();
      a.put(PrivacyDataType.IMSI.name, localIMSIGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError12)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data imsi-getter not defined");
    }
    try
    {
      Line1NumberGetter localLine1NumberGetter = new com/xiaomi/account/privacy_data/line_1_number/Line1NumberGetter;
      localLine1NumberGetter.<init>();
      a.put(PrivacyDataType.LINE_1_NUMBER.name, localLine1NumberGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError13)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data line-1-number-getter not defined");
    }
    try
    {
      MCCMNCGetter localMCCMNCGetter = new com/xiaomi/account/privacy_data/mccmnc/MCCMNCGetter;
      localMCCMNCGetter.<init>();
      a.put(PrivacyDataType.MCCMNC.name, localMCCMNCGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError14)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data mccmnc-getter not defined");
    }
    try
    {
      NetworkMCCMNCGetter localNetworkMCCMNCGetter = new com/xiaomi/account/privacy_data/network_mccmnc/NetworkMCCMNCGetter;
      localNetworkMCCMNCGetter.<init>();
      a.put(PrivacyDataType.NETWORK_MCCMNC.name, localNetworkMCCMNCGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError15)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data network-mccmnc-getter not defined");
    }
    try
    {
      SubIdGetter localSubIdGetter = new com/xiaomi/account/privacy_data/sub_id/SubIdGetter;
      localSubIdGetter.<init>();
      a.put(PrivacyDataType.SUB_ID.name, localSubIdGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError16)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data sub-id-getter not defined");
    }
    try
    {
      MobileDataEnableGetter localMobileDataEnableGetter = new com/xiaomi/account/privacy_data/mobile_data_enable/MobileDataEnableGetter;
      localMobileDataEnableGetter.<init>();
      a.put(PrivacyDataType.MOBILE_DATA_ENABLE.name, localMobileDataEnableGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError17)
    {
      Log.e("PrivacyDataMaster", "bluetooth-data mobile-data-enable-getter not defined");
    }
    try
    {
      SimInServiceGetter localSimInServiceGetter = new com/xiaomi/account/privacy_data/sim_in_service/SimInServiceGetter;
      localSimInServiceGetter.<init>();
      a.put(PrivacyDataType.SIM_IN_SERVICE.name, localSimInServiceGetter);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError18)
    {
      Log.e("PrivacyDataMaster", "sim-in-service privacy-data-getter not defined");
    }
  }
  
  public static String a(Context paramContext, PrivacyDataType paramPrivacyDataType, String... paramVarArgs)
  {
    return b(paramContext, paramPrivacyDataType.name, paramVarArgs);
  }
  
  public static String b(Context paramContext, String paramString, String... paramVarArgs)
  {
    o5.a locala = (o5.a)a.get(paramString);
    if (locala == null)
    {
      paramContext = new StringBuilder();
      paramContext.append("no privacy data getter for type: ");
      paramContext.append(paramString);
      Log.e("PrivacyDataMaster", paramContext.toString());
      return null;
    }
    try
    {
      paramVarArgs = locala.a(paramContext, paramVarArgs);
      e(paramContext).edit().putString(paramString, paramVarArgs).commit();
      return paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      paramContext = new StringBuilder();
      paramContext.append("unknown error: get privacy data failed for type: ");
      paramContext.append(paramString);
      Log.e("PrivacyDataMaster", paramContext.toString(), paramVarArgs);
      return null;
    }
    catch (PrivacyDataException paramVarArgs)
    {
      paramContext = new StringBuilder();
      paramContext.append("get privacy data failed for type: ");
      paramContext.append(paramString);
      Log.e("PrivacyDataMaster", paramContext.toString(), paramVarArgs);
    }
    return null;
  }
  
  public static String c(Context paramContext, PrivacyDataType paramPrivacyDataType, String... paramVarArgs)
  {
    return d(paramContext, paramPrivacyDataType.name, paramVarArgs);
  }
  
  public static String d(Context paramContext, String paramString, String... paramVarArgs)
  {
    SharedPreferences localSharedPreferences = e(paramContext);
    String str = localSharedPreferences.getString(paramString, null);
    if (str != null)
    {
      paramContext = new StringBuilder();
      paramContext.append("read privacy data from local cache for type: ");
      paramContext.append(paramString);
      Log.e("PrivacyDataMaster", paramContext.toString());
      return str;
    }
    paramContext = b(paramContext, paramString, paramVarArgs);
    if (paramContext != null)
    {
      localSharedPreferences.edit().putString(paramString, paramContext).commit();
      paramVarArgs = new StringBuilder();
      paramVarArgs.append("get privacy data success and cache for type: ");
      paramVarArgs.append(paramString);
      Log.e("PrivacyDataMaster", paramVarArgs.toString());
    }
    return paramContext;
  }
  
  private static SharedPreferences e(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.xiaomi.account.privacy_data.master.data", 0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p5.a
 * JD-Core Version:    0.7.0.1
 */