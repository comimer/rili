package com.xiaomi.accountsdk.utils;

public class FidSigningUtil
{
  public static c a()
  {
    return a.a();
  }
  
  public static class FidSignException
    extends Exception
  {
    public FidSignException(String paramString)
    {
      super();
    }
    
    public FidSignException(Throwable paramThrowable)
    {
      super();
    }
  }
  
  private static class a
  {
    private static volatile FidSigningUtil.c a = new FidSigningUtil.b();
  }
  
  public static final class b
    implements FidSigningUtil.c
  {
    public String a()
      throws FidSigningUtil.FidSignException
    {
      throw new FidSigningUtil.FidSignException("单发应用场景无法调用");
    }
    
    public byte[] b(byte[] paramArrayOfByte)
      throws FidSigningUtil.FidSignException
    {
      return paramArrayOfByte;
    }
    
    public boolean c()
    {
      return false;
    }
  }
  
  public static abstract interface c
  {
    public abstract String a()
      throws FidSigningUtil.FidSignException;
    
    public abstract byte[] b(byte[] paramArrayOfByte)
      throws FidSigningUtil.FidSignException;
    
    public abstract boolean c()
      throws FidSigningUtil.FidSignException;
  }
  
  public static abstract interface d
  {
    public abstract String a()
      throws FidSigningUtil.FidSignException;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.FidSigningUtil
 * JD-Core Version:    0.7.0.1
 */