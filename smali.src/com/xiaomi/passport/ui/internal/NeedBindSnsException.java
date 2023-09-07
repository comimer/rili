package com.xiaomi.passport.ui.internal;

import com.xiaomi.passport.snscorelib.internal.entity.SNSBindParameter;

public class NeedBindSnsException
  extends PassportUIException
{
  public final SNSBindParameter snsBindParams;
  
  public NeedBindSnsException(SNSBindParameter paramSNSBindParameter)
  {
    this.snsBindParams = paramSNSBindParameter;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.NeedBindSnsException
 * JD-Core Version:    0.7.0.1
 */