package androidx.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.BaseBundle;
import android.os.Bundle;
import androidx.fragment.app.Fragment;

public class c
  extends f
{
  int i;
  private CharSequence[] j;
  private CharSequence[] k;
  
  private ListPreference p()
  {
    return (ListPreference)i();
  }
  
  public static c q(String paramString)
  {
    c localc = new c();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    localc.setArguments(localBundle);
    return localc;
  }
  
  public void m(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      int m = this.i;
      if (m >= 0)
      {
        String str = this.k[m].toString();
        ListPreference localListPreference = p();
        if (localListPreference.c(str)) {
          localListPreference.d1(str);
        }
      }
    }
  }
  
  protected void n(androidx.appcompat.app.c.a parama)
  {
    super.n(parama);
    parama.setSingleChoiceItems(this.j, this.i, new a());
    parama.setPositiveButton(null, null);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = p();
      if ((paramBundle.Y0() != null) && (paramBundle.a1() != null))
      {
        this.i = paramBundle.X0(paramBundle.b1());
        this.j = paramBundle.Y0();
        this.k = paramBundle.a1();
      }
      else
      {
        throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
      }
    }
    else
    {
      this.i = paramBundle.getInt("ListPreferenceDialogFragment.index", 0);
      this.j = paramBundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
      this.k = paramBundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("ListPreferenceDialogFragment.index", this.i);
    paramBundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.j);
    paramBundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.k);
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      c localc = c.this;
      localc.i = paramInt;
      localc.onClick(paramDialogInterface, -1);
      paramDialogInterface.dismiss();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.c
 * JD-Core Version:    0.7.0.1
 */