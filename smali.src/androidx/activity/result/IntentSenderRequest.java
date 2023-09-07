package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

@SuppressLint({"BanParcelableUsage"})
public final class IntentSenderRequest
  implements Parcelable
{
  public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new a();
  private final Intent mFillInIntent;
  private final int mFlagsMask;
  private final int mFlagsValues;
  private final IntentSender mIntentSender;
  
  IntentSenderRequest(IntentSender paramIntentSender, Intent paramIntent, int paramInt1, int paramInt2)
  {
    this.mIntentSender = paramIntentSender;
    this.mFillInIntent = paramIntent;
    this.mFlagsMask = paramInt1;
    this.mFlagsValues = paramInt2;
  }
  
  IntentSenderRequest(Parcel paramParcel)
  {
    this.mIntentSender = ((IntentSender)paramParcel.readParcelable(IntentSender.class.getClassLoader()));
    this.mFillInIntent = ((Intent)paramParcel.readParcelable(Intent.class.getClassLoader()));
    this.mFlagsMask = paramParcel.readInt();
    this.mFlagsValues = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Intent getFillInIntent()
  {
    return this.mFillInIntent;
  }
  
  public int getFlagsMask()
  {
    return this.mFlagsMask;
  }
  
  public int getFlagsValues()
  {
    return this.mFlagsValues;
  }
  
  public IntentSender getIntentSender()
  {
    return this.mIntentSender;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.mIntentSender, paramInt);
    paramParcel.writeParcelable(this.mFillInIntent, paramInt);
    paramParcel.writeInt(this.mFlagsMask);
    paramParcel.writeInt(this.mFlagsValues);
  }
  
  class a
    implements Parcelable.Creator<IntentSenderRequest>
  {
    public IntentSenderRequest a(Parcel paramParcel)
    {
      return new IntentSenderRequest(paramParcel);
    }
    
    public IntentSenderRequest[] b(int paramInt)
    {
      return new IntentSenderRequest[paramInt];
    }
  }
  
  public static final class b
  {
    private IntentSender a;
    private Intent b;
    private int c;
    private int d;
    
    public b(IntentSender paramIntentSender)
    {
      this.a = paramIntentSender;
    }
    
    public IntentSenderRequest a()
    {
      return new IntentSenderRequest(this.a, this.b, this.c, this.d);
    }
    
    public b b(Intent paramIntent)
    {
      this.b = paramIntent;
      return this;
    }
    
    public b c(int paramInt1, int paramInt2)
    {
      this.d = paramInt1;
      this.c = paramInt2;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.activity.result.IntentSenderRequest
 * JD-Core Version:    0.7.0.1
 */