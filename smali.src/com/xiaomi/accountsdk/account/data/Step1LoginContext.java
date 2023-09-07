package com.xiaomi.accountsdk.account.data;

import a6.k.h;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;

public class Step1LoginContext
  implements Parcelable
{
  public static final Parcelable.Creator<Step1LoginContext> CREATOR = new a();
  private b mLoginContext;
  private NextStep mNextStep;
  
  private Step1LoginContext(Parcel paramParcel)
  {
    Object localObject = NextStep.valueOf(paramParcel.readString());
    this.mNextStep = ((NextStep)localObject);
    if (localObject == NextStep.NOTIFICATION)
    {
      localObject = new d();
      ((d)localObject).a = paramParcel.readString();
      ((d)localObject).b = paramParcel.readString();
      ((d)localObject).c = new k.h(paramParcel.readString());
      this.mLoginContext = ((b)localObject);
    }
    else if (localObject == NextStep.VERIFICATION)
    {
      localObject = new e();
      ((e)localObject).a = paramParcel.readString();
      ((e)localObject).b = new MetaLoginData(paramParcel.readString(), paramParcel.readString(), paramParcel.readString());
      ((e)localObject).c = paramParcel.readString();
      this.mLoginContext = ((b)localObject);
    }
    else if (localObject == NextStep.NONE)
    {
      localObject = new c();
      ((c)localObject).a = ((AccountInfo)paramParcel.readParcelable(getClass().getClassLoader()));
      this.mLoginContext = ((b)localObject);
    }
  }
  
  public Step1LoginContext(AccountInfo paramAccountInfo)
  {
    this.mNextStep = NextStep.NONE;
    c localc = new c();
    localc.a = paramAccountInfo;
    this.mLoginContext = localc;
  }
  
  public Step1LoginContext(Exception paramException)
  {
    if ((paramException instanceof NeedNotificationException))
    {
      localObject = (NeedNotificationException)paramException;
      this.mNextStep = NextStep.NOTIFICATION;
      paramException = new d();
      paramException.a = ((NeedNotificationException)localObject).getUserId();
      paramException.b = ((NeedNotificationException)localObject).getNotificationUrl();
      paramException.c = ((NeedNotificationException)localObject).getLoginContent();
      this.mLoginContext = paramException;
    }
    else
    {
      if (!(paramException instanceof NeedVerificationException)) {
        break label120;
      }
      paramException = (NeedVerificationException)paramException;
      this.mNextStep = NextStep.VERIFICATION;
      localObject = new e();
      ((e)localObject).a = paramException.getUserId();
      ((e)localObject).b = paramException.getMetaLoginData();
      ((e)localObject).c = paramException.getStep1Token();
      this.mLoginContext = ((b)localObject);
    }
    return;
    label120:
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Exception type ");
    ((StringBuilder)localObject).append(paramException.getClass().getName());
    ((StringBuilder)localObject).append(" not supported. ");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public b getLoginContext()
  {
    return this.mLoginContext;
  }
  
  public NextStep getNextStep()
  {
    return this.mNextStep;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mNextStep.name());
    Object localObject = this.mNextStep;
    if (localObject == NextStep.NOTIFICATION)
    {
      localObject = (d)this.mLoginContext;
      paramParcel.writeString(((d)localObject).a);
      paramParcel.writeString(((d)localObject).b);
      paramParcel.writeString(((d)localObject).c.h());
    }
    else if (localObject == NextStep.VERIFICATION)
    {
      localObject = (e)this.mLoginContext;
      paramParcel.writeString(((e)localObject).a);
      paramParcel.writeString(((e)localObject).b.sign);
      paramParcel.writeString(((e)localObject).b.qs);
      paramParcel.writeString(((e)localObject).b.callback);
      paramParcel.writeString(((e)localObject).c);
    }
    else if (localObject == NextStep.NONE)
    {
      paramParcel.writeParcelable(((c)this.mLoginContext).a, paramInt);
    }
  }
  
  public static enum NextStep
  {
    static
    {
      NextStep localNextStep1 = new NextStep("NONE", 0);
      NONE = localNextStep1;
      NextStep localNextStep2 = new NextStep("NOTIFICATION", 1);
      NOTIFICATION = localNextStep2;
      NextStep localNextStep3 = new NextStep("VERIFICATION", 2);
      VERIFICATION = localNextStep3;
      $VALUES = new NextStep[] { localNextStep1, localNextStep2, localNextStep3 };
    }
    
    private NextStep() {}
  }
  
  class a
    implements Parcelable.Creator<Step1LoginContext>
  {
    public Step1LoginContext a(Parcel paramParcel)
    {
      return new Step1LoginContext(paramParcel, null);
    }
    
    public Step1LoginContext[] b(int paramInt)
    {
      return new Step1LoginContext[paramInt];
    }
  }
  
  public static abstract interface b {}
  
  public static class c
    implements Step1LoginContext.b
  {
    public AccountInfo a;
  }
  
  public static class d
    implements Step1LoginContext.b
  {
    public String a;
    public String b;
    public k.h c;
  }
  
  public static class e
    implements Step1LoginContext.b
  {
    public String a;
    public MetaLoginData b;
    public String c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.Step1LoginContext
 * JD-Core Version:    0.7.0.1
 */