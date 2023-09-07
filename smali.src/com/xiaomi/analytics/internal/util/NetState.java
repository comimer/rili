package com.xiaomi.analytics.internal.util;

public enum NetState
{
  static
  {
    NetState localNetState1 = new NetState("WIFI", 0);
    WIFI = localNetState1;
    NetState localNetState2 = new NetState("MN2G", 1);
    MN2G = localNetState2;
    NetState localNetState3 = new NetState("MN3G", 2);
    MN3G = localNetState3;
    NetState localNetState4 = new NetState("MN4G", 3);
    MN4G = localNetState4;
    NetState localNetState5 = new NetState("NONE", 4);
    NONE = localNetState5;
    $VALUES = new NetState[] { localNetState1, localNetState2, localNetState3, localNetState4, localNetState5 };
  }
  
  private NetState() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.internal.util.NetState
 * JD-Core Version:    0.7.0.1
 */