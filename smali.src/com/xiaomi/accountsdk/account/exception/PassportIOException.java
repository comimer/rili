package com.xiaomi.accountsdk.account.exception;

import java.io.IOException;

public class PassportIOException
  extends IOException
{
  public boolean isStsUrlRequestError = false;
  public final int responseCode;
  public String serviceId;
  
  public PassportIOException(int paramInt, String paramString)
  {
    super(paramString);
    this.responseCode = paramInt;
  }
  
  public PassportIOException(IOException paramIOException)
  {
    super(paramIOException);
    this.responseCode = -1;
  }
  
  public void stsUrlRequestError(String paramString)
  {
    this.serviceId = paramString;
    this.isStsUrlRequestError = true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("response code: ");
    localStringBuilder.append(this.responseCode);
    localStringBuilder.append("\n");
    if (this.isStsUrlRequestError)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.serviceId);
      ((StringBuilder)localObject).append(" sts url request error \n");
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = "";
    }
    localStringBuilder.append((String)localObject);
    Object localObject = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append((String)localObject);
    localStringBuilder.append(super.toString());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.PassportIOException
 * JD-Core Version:    0.7.0.1
 */