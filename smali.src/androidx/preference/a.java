package androidx.preference;

import android.os.BaseBundle;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.Fragment;

public class a
  extends f
{
  private EditText i;
  private CharSequence j;
  
  private EditTextPreference p()
  {
    return (EditTextPreference)i();
  }
  
  public static a q(String paramString)
  {
    a locala = new a();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    locala.setArguments(localBundle);
    return locala;
  }
  
  protected boolean j()
  {
    return true;
  }
  
  protected void k(View paramView)
  {
    super.k(paramView);
    paramView = (EditText)paramView.findViewById(16908291);
    this.i = paramView;
    if (paramView != null)
    {
      paramView.requestFocus();
      this.i.setText(this.j);
      paramView = this.i;
      paramView.setSelection(paramView.getText().length());
      if (p().X0() != null) {
        p().X0().a(this.i);
      }
      return;
    }
    throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
  }
  
  public void m(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str = this.i.getText().toString();
      EditTextPreference localEditTextPreference = p();
      if (localEditTextPreference.c(str)) {
        localEditTextPreference.Z0(str);
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null) {
      this.j = p().Y0();
    } else {
      this.j = paramBundle.getCharSequence("EditTextPreferenceDialogFragment.text");
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.j);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.a
 * JD-Core Version:    0.7.0.1
 */