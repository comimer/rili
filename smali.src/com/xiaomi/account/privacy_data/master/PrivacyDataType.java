package com.xiaomi.account.privacy_data.master;

public enum PrivacyDataType
{
  public final String name;
  
  static
  {
    PrivacyDataType localPrivacyDataType1 = new PrivacyDataType("OAID", 0, "oaid");
    OAID = localPrivacyDataType1;
    PrivacyDataType localPrivacyDataType2 = new PrivacyDataType("ANDROID_ID", 1, "android_id");
    ANDROID_ID = localPrivacyDataType2;
    PrivacyDataType localPrivacyDataType3 = new PrivacyDataType("DEVICE_ID", 2, "device_id");
    DEVICE_ID = localPrivacyDataType3;
    PrivacyDataType localPrivacyDataType4 = new PrivacyDataType("MIUI_DEVICE_ID", 3, "miui_device_id");
    MIUI_DEVICE_ID = localPrivacyDataType4;
    PrivacyDataType localPrivacyDataType5 = new PrivacyDataType("BLUETOOTH_NAME", 4, "bluetooth_name");
    BLUETOOTH_NAME = localPrivacyDataType5;
    PrivacyDataType localPrivacyDataType6 = new PrivacyDataType("BLUETOOTH_ADDRESS", 5, "bluetooth_address");
    BLUETOOTH_ADDRESS = localPrivacyDataType6;
    PrivacyDataType localPrivacyDataType7 = new PrivacyDataType("MAC_ADDRESS", 6, "mac_address");
    MAC_ADDRESS = localPrivacyDataType7;
    PrivacyDataType localPrivacyDataType8 = new PrivacyDataType("SSID", 7, "ssid");
    SSID = localPrivacyDataType8;
    PrivacyDataType localPrivacyDataType9 = new PrivacyDataType("BSSID", 8, "bssid");
    BSSID = localPrivacyDataType9;
    PrivacyDataType localPrivacyDataType10 = new PrivacyDataType("CONFIGURED_SSIDS", 9, "configured_ssids");
    CONFIGURED_SSIDS = localPrivacyDataType10;
    PrivacyDataType localPrivacyDataType11 = new PrivacyDataType("ICCID", 10, "iccid");
    ICCID = localPrivacyDataType11;
    PrivacyDataType localPrivacyDataType12 = new PrivacyDataType("IMSI", 11, "imsi");
    IMSI = localPrivacyDataType12;
    PrivacyDataType localPrivacyDataType13 = new PrivacyDataType("LINE_1_NUMBER", 12, "line_1_number");
    LINE_1_NUMBER = localPrivacyDataType13;
    PrivacyDataType localPrivacyDataType14 = new PrivacyDataType("MCCMNC", 13, "mccmnc");
    MCCMNC = localPrivacyDataType14;
    PrivacyDataType localPrivacyDataType15 = new PrivacyDataType("NETWORK_MCCMNC", 14, "network_mccmnc");
    NETWORK_MCCMNC = localPrivacyDataType15;
    PrivacyDataType localPrivacyDataType16 = new PrivacyDataType("SUB_ID", 15, "sub_id");
    SUB_ID = localPrivacyDataType16;
    PrivacyDataType localPrivacyDataType17 = new PrivacyDataType("MOBILE_DATA_ENABLE", 16, "mobile_data_enable");
    MOBILE_DATA_ENABLE = localPrivacyDataType17;
    PrivacyDataType localPrivacyDataType18 = new PrivacyDataType("SIM_IN_SERVICE", 17, "sim_in_service");
    SIM_IN_SERVICE = localPrivacyDataType18;
    $VALUES = new PrivacyDataType[] { localPrivacyDataType1, localPrivacyDataType2, localPrivacyDataType3, localPrivacyDataType4, localPrivacyDataType5, localPrivacyDataType6, localPrivacyDataType7, localPrivacyDataType8, localPrivacyDataType9, localPrivacyDataType10, localPrivacyDataType11, localPrivacyDataType12, localPrivacyDataType13, localPrivacyDataType14, localPrivacyDataType15, localPrivacyDataType16, localPrivacyDataType17, localPrivacyDataType18 };
  }
  
  private PrivacyDataType(String paramString)
  {
    this.name = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.account.privacy_data.master.PrivacyDataType
 * JD-Core Version:    0.7.0.1
 */