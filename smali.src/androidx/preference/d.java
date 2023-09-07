package androidx.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.os.BaseBundle;
import android.os.Bundle;
import androidx.appcompat.app.c.a;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class d
  extends f
{
  Set<String> i = new HashSet();
  boolean j;
  CharSequence[] k;
  CharSequence[] l;
  
  private MultiSelectListPreference p()
  {
    return (MultiSelectListPreference)i();
  }
  
  public static d q(String paramString)
  {
    d locald = new d();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    locald.setArguments(localBundle);
    return locald;
  }
  
  public void m(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.j))
    {
      MultiSelectListPreference localMultiSelectListPreference = p();
      if (localMultiSelectListPreference.c(this.i)) {
        localMultiSelectListPreference.a1(this.i);
      }
    }
    this.j = false;
  }
  
  protected void n(c.a parama)
  {
    super.n(parama);
    int m = this.l.length;
    boolean[] arrayOfBoolean = new boolean[m];
    for (int n = 0; n < m; n++) {
      arrayOfBoolean[n] = this.i.contains(this.l[n].toString());
    }
    parama.setMultiChoiceItems(this.k, arrayOfBoolean, new a());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = p();
      if ((paramBundle.X0() != null) && (paramBundle.Y0() != null))
      {
        this.i.clear();
        this.i.addAll(paramBundle.Z0());
        this.j = false;
        this.k = paramBundle.X0();
        this.l = paramBundle.Y0();
      }
      else
      {
        throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
      }
    }
    else
    {
      this.i.clear();
      this.i.addAll(paramBundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
      this.j = paramBundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
      this.k = paramBundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
      this.l = paramBundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList(this.i));
    paramBundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.j);
    paramBundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.k);
    paramBundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.l);
  }
  
  class a
    implements DialogInterface.OnMultiChoiceClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        paramDialogInterface = d.this;
        paramBoolean = paramDialogInterface.j;
        paramDialogInterface.j = (paramDialogInterface.i.add(paramDialogInterface.l[paramInt].toString()) | paramBoolean);
      }
      else
      {
        paramDialogInterface = d.this;
        paramBoolean = paramDialogInterface.j;
        paramDialogInterface.j = (paramDialogInterface.i.remove(paramDialogInterface.l[paramInt].toString()) | paramBoolean);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.d
 * JD-Core Version:    0.7.0.1
 */