package com.xiaomi.accountsdk.account.exception;

public class HttpException
  extends Exception
{
  public boolean isStsUrlRequestError = false;
  public final int responseCode;
  public String serviceId;
  
  public HttpException(int paramInt, String paramString)
  {
    super(paramString);
    this.responseCode = paramInt;
  }
  
  public void stsUrlRequestError(String paramString)
  {
    this.serviceId = paramString;
    this.isStsUrlRequestError = true;
  }
  
  public String toString()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("response code: ");
    ((StringBuilder)localObject1).append(this.responseCode);
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
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.HttpException
 * JD-Core Version:    0.7.0.1
 */