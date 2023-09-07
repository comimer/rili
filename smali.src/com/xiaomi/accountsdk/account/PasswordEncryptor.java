package com.xiaomi.accountsdk.account;

public abstract interface PasswordEncryptor
{
  public abstract a a(String paramString)
    throws PasswordEncryptor.PasswordEncryptorException;
  
  public static class PasswordEncryptorException
    extends Exception
  {
    public PasswordEncryptorException(String paramString)
    {
      super();
    }
    
    public PasswordEncryptorException(String paramString, Throwable paramThrowable)
    {
      super(paramThrowable);
    }
    
    public PasswordEncryptorException(Throwable paramThrowable)
    {
      super();
    }
  }
  
  public static class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.PasswordEncryptor
 * JD-Core Version:    0.7.0.1
 */