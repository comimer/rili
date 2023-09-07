package com.xiaomi.verificationsdk.internal;

public class VerificationException
  extends Exception
{
  private final int code;
  private final int dialogTipMsg;
  
  public VerificationException(int paramInt1, String paramString, int paramInt2)
  {
    super(paramString);
    this.code = paramInt1;
    this.dialogTipMsg = paramInt2;
  }
  
  public int getCode()
  {
    return this.code;
  }
  
  public int getDialogTipMsg()
  {
    return this.dialogTipMsg;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.verificationsdk.internal.VerificationException
 * JD-Core Version:    0.7.0.1
 */