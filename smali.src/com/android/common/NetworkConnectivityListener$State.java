package com.android.common;

public enum NetworkConnectivityListener$State
{
  static
  {
    State localState1 = new State("UNKNOWN", 0);
    UNKNOWN = localState1;
    State localState2 = new State("CONNECTED", 1);
    CONNECTED = localState2;
    State localState3 = new State("NOT_CONNECTED", 2);
    NOT_CONNECTED = localState3;
    $VALUES = new State[] { localState1, localState2, localState3 };
  }
  
  private NetworkConnectivityListener$State() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.common.NetworkConnectivityListener.State
 * JD-Core Version:    0.7.0.1
 */