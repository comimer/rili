package com.xiaomi.accountsdk.account.exception;

public class AccountException
  extends Exception
{
  public final int code;
  public final String codeDesc;
  public boolean isStsUrlRequestError = false;
  public String serviceId;
  
  public AccountException(int paramInt, String paramString)
  {
    this(paramInt, paramString, null);
  }
  
  public AccountException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.code = paramInt;
    this.codeDesc = paramString;
  }
  
  public void stsUrlRequestError(String paramString)
  {
    this.serviceId = paramString;
    this.isStsUrlRequestError = true;
  }
  
  public String toString()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("server code: ");
    ((StringBuilder)localObject1).append(this.code);
    ((StringBuilder)localObject1).append("; desc: ");
    ((StringBuilder)localObject1).append(this.codeDesc);
    ((StringBuilder)localObject1).append("\n");
    if (this.isStsUrlRequestError)
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(this.serviceId);
      ((StringBuilder)localObject2).append(" sts url request error \n");
      localObject2 = ((StringBuilder)localObject2).toString();
    }
    else
    {
      localObject2 = "";
    }
    ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(super.toString());
    return ((StringBuilder)localObject2).toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.AccountException
 * JD-Core Version:    0.7.0.1
 */