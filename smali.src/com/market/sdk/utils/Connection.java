package com.market.sdk.utils;

public class Connection
{
  protected class ConnectionException
    extends Exception
  {
    private static final long serialVersionUID = 1L;
    protected Connection.NetworkError mError;
    
    public ConnectionException(Connection.NetworkError paramNetworkError)
    {
      this.mError = paramNetworkError;
    }
  }
  
  public static enum NetworkError
  {
    static
    {
      NetworkError localNetworkError1 = new NetworkError("OK", 0);
      OK = localNetworkError1;
      NetworkError localNetworkError2 = new NetworkError("URL_ERROR", 1);
      URL_ERROR = localNetworkError2;
      NetworkError localNetworkError3 = new NetworkError("NETWORK_ERROR", 2);
      NETWORK_ERROR = localNetworkError3;
      NetworkError localNetworkError4 = new NetworkError("AUTH_ERROR", 3);
      AUTH_ERROR = localNetworkError4;
      NetworkError localNetworkError5 = new NetworkError("CLIENT_ERROR", 4);
      CLIENT_ERROR = localNetworkError5;
      NetworkError localNetworkError6 = new NetworkError("SERVER_ERROR", 5);
      SERVER_ERROR = localNetworkError6;
      NetworkError localNetworkError7 = new NetworkError("RESULT_ERROR", 6);
      RESULT_ERROR = localNetworkError7;
      NetworkError localNetworkError8 = new NetworkError("UNKNOWN_ERROR", 7);
      UNKNOWN_ERROR = localNetworkError8;
      $VALUES = new NetworkError[] { localNetworkError1, localNetworkError2, localNetworkError3, localNetworkError4, localNetworkError5, localNetworkError6, localNetworkError7, localNetworkError8 };
    }
    
    private NetworkError() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.Connection
 * JD-Core Version:    0.7.0.1
 */