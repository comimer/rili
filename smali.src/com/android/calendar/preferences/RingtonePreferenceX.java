package com.android.calendar.preferences;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.preference.Preference;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import m1.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/preferences/RingtonePreferenceX;", "Landroidx/preference/Preference;", "Lkotlin/u;", "W0", "", "R0", "type", "U0", "", "value", "V0", "Landroid/content/res/TypedArray;", "a", "index", "", "b0", "defaultValue", "h0", "Landroid/app/Activity;", "fragment", "requestCode", "S0", "Landroid/content/Intent;", "ringtonePickerIntent", "T0", "W", "I", "mRingtoneType", "", "X", "Z", "mShowDefault", "Y", "mShowSilent", "Ljava/lang/String;", "mValue", "a0", "mIsValueSet", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public class RingtonePreferenceX
  extends Preference
{
  public static final a b0 = new a(null);
  private int W;
  private boolean X;
  private boolean Y;
  private String Z;
  private final boolean a0;
  
  public RingtonePreferenceX(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.e2);
    r.e(paramContext, "context.obtainStyledAttr…able.RingtonePreferenceX)");
    this.W = paramContext.getInt(0, 2);
    this.X = paramContext.getBoolean(1, true);
    this.Y = paramContext.getBoolean(2, true);
    paramContext.recycle();
  }
  
  private final void W0()
  {
    Context localContext = n();
    if (localContext == null) {
      return;
    }
    Object localObject = this.Z;
    if (localObject == null)
    {
      H0(localContext.getString(2131887303));
    }
    else
    {
      localObject = RingtoneManager.getRingtone(localContext, Uri.parse((String)localObject));
      if (localObject != null) {
        H0(((Ringtone)localObject).getTitle(localContext));
      }
    }
  }
  
  public final int R0()
  {
    return this.W;
  }
  
  public final void S0(Activity paramActivity, int paramInt)
  {
    r.f(paramActivity, "fragment");
    Intent localIntent = new Intent("android.intent.action.RINGTONE_PICKER");
    T0(localIntent);
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
  
  public void T0(Intent paramIntent)
  {
    r.f(paramIntent, "ringtonePickerIntent");
    String str = this.Z;
    if (str != null) {
      paramIntent.putExtra("android.intent.extra.ringtone.EXISTING_URI", Uri.parse(str));
    }
    paramIntent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", this.X);
    if (this.X) {
      paramIntent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", RingtoneManager.getDefaultUri(R0()));
    }
    paramIntent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", this.Y);
    paramIntent.putExtra("android.intent.extra.ringtone.TYPE", this.W);
    paramIntent.putExtra("android.intent.extra.ringtone.TITLE", J());
    paramIntent.putExtra("android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS", 64);
  }
  
  public final void U0(int paramInt)
  {
    this.W = paramInt;
  }
  
  public final void V0(String paramString)
  {
    if ((!r.a(this.Z, paramString)) || (!this.a0))
    {
      this.Z = paramString;
      n0(paramString);
      W0();
    }
  }
  
  protected Object b0(TypedArray paramTypedArray, int paramInt)
  {
    r.f(paramTypedArray, "a");
    return paramTypedArray.getString(paramInt);
  }
  
  protected void h0(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      paramObject = (String)paramObject;
    } else {
      paramObject = null;
    }
    V0(C(paramObject));
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/preferences/RingtonePreferenceX$a;", "", "", "EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS", "Ljava/lang/String;", "", "FLAG_BYPASS_INTERRUPTION_POLICY", "I", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.preferences.RingtonePreferenceX
 * JD-Core Version:    0.7.0.1
 */