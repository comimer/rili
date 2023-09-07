package androidx.work;

public enum NetworkType
{
  static
  {
    NetworkType localNetworkType1 = new NetworkType("NOT_REQUIRED", 0);
    NOT_REQUIRED = localNetworkType1;
    NetworkType localNetworkType2 = new NetworkType("CONNECTED", 1);
    CONNECTED = localNetworkType2;
    NetworkType localNetworkType3 = new NetworkType("UNMETERED", 2);
    UNMETERED = localNetworkType3;
    NetworkType localNetworkType4 = new NetworkType("NOT_ROAMING", 3);
    NOT_ROAMING = localNetworkType4;
    NetworkType localNetworkType5 = new NetworkType("METERED", 4);
    METERED = localNetworkType5;
    NetworkType localNetworkType6 = new NetworkType("TEMPORARILY_UNMETERED", 5);
    TEMPORARILY_UNMETERED = localNetworkType6;
    $VALUES = new NetworkType[] { localNetworkType1, localNetworkType2, localNetworkType3, localNetworkType4, localNetworkType5, localNetworkType6 };
  }
  
  private NetworkType() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.NetworkType
 * JD-Core Version:    0.7.0.1
 */