package androidx.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.app.c.a;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c;

public abstract class f
  extends c
  implements DialogInterface.OnClickListener
{
  private DialogPreference a;
  private CharSequence b;
  private CharSequence c;
  private CharSequence d;
  private CharSequence e;
  private int f;
  private BitmapDrawable g;
  private int h;
  
  private void o(Dialog paramDialog)
  {
    paramDialog.getWindow().setSoftInputMode(5);
  }
  
  public DialogPreference i()
  {
    if (this.a == null)
    {
      String str = getArguments().getString("key");
      this.a = ((DialogPreference)((DialogPreference.a)getTargetFragment()).a(str));
    }
    return this.a;
  }
  
  protected boolean j()
  {
    return false;
  }
  
  protected void k(View paramView)
  {
    paramView = paramView.findViewById(16908299);
    if (paramView != null)
    {
      CharSequence localCharSequence = this.e;
      int i = 8;
      if (!TextUtils.isEmpty(localCharSequence))
      {
        if ((paramView instanceof TextView)) {
          ((TextView)paramView).setText(localCharSequence);
        }
        i = 0;
      }
      if (paramView.getVisibility() != i) {
        paramView.setVisibility(i);
      }
    }
  }
  
  protected View l(Context paramContext)
  {
    int i = this.f;
    if (i == 0) {
      return null;
    }
    return LayoutInflater.from(paramContext).inflate(i, null);
  }
  
  public abstract void m(boolean paramBoolean);
  
  protected void n(c.a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.h = paramInt;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject1 = getTargetFragment();
    if ((localObject1 instanceof DialogPreference.a))
    {
      Object localObject2 = (DialogPreference.a)localObject1;
      localObject1 = getArguments().getString("key");
      if (paramBundle == null)
      {
        paramBundle = (DialogPreference)((DialogPreference.a)localObject2).a((CharSequence)localObject1);
        this.a = paramBundle;
        this.b = paramBundle.U0();
        this.c = this.a.W0();
        this.d = this.a.V0();
        this.e = this.a.T0();
        this.f = this.a.S0();
        localObject1 = this.a.R0();
        if ((localObject1 != null) && (!(localObject1 instanceof BitmapDrawable)))
        {
          paramBundle = Bitmap.createBitmap(((Drawable)localObject1).getIntrinsicWidth(), ((Drawable)localObject1).getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
          localObject2 = new Canvas(paramBundle);
          ((Drawable)localObject1).setBounds(0, 0, ((Canvas)localObject2).getWidth(), ((Canvas)localObject2).getHeight());
          ((Drawable)localObject1).draw((Canvas)localObject2);
          this.g = new BitmapDrawable(getResources(), paramBundle);
        }
        else
        {
          this.g = ((BitmapDrawable)localObject1);
        }
      }
      else
      {
        this.b = paramBundle.getCharSequence("PreferenceDialogFragment.title");
        this.c = paramBundle.getCharSequence("PreferenceDialogFragment.positiveText");
        this.d = paramBundle.getCharSequence("PreferenceDialogFragment.negativeText");
        this.e = paramBundle.getCharSequence("PreferenceDialogFragment.message");
        this.f = paramBundle.getInt("PreferenceDialogFragment.layout", 0);
        paramBundle = (Bitmap)paramBundle.getParcelable("PreferenceDialogFragment.icon");
        if (paramBundle != null) {
          this.g = new BitmapDrawable(getResources(), paramBundle);
        }
      }
      return;
    }
    throw new IllegalStateException("Target fragment must implement TargetFragment interface");
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Object localObject = getActivity();
    this.h = -2;
    paramBundle = new c.a((Context)localObject).setTitle(this.b).setIcon(this.g).setPositiveButton(this.c, this).setNegativeButton(this.d, this);
    localObject = l((Context)localObject);
    if (localObject != null)
    {
      k((View)localObject);
      paramBundle.setView((View)localObject);
    }
    else
    {
      paramBundle.setMessage(this.e);
    }
    n(paramBundle);
    paramBundle = paramBundle.create();
    if (j()) {
      o(paramBundle);
    }
    return paramBundle;
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    boolean bool;
    if (this.h == -1) {
      bool = true;
    } else {
      bool = false;
    }
    m(bool);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putCharSequence("PreferenceDialogFragment.title", this.b);
    paramBundle.putCharSequence("PreferenceDialogFragment.positiveText", this.c);
    paramBundle.putCharSequence("PreferenceDialogFragment.negativeText", this.d);
    paramBundle.putCharSequence("PreferenceDialogFragment.message", this.e);
    paramBundle.putInt("PreferenceDialogFragment.layout", this.f);
    BitmapDrawable localBitmapDrawable = this.g;
    if (localBitmapDrawable != null) {
      paramBundle.putParcelable("PreferenceDialogFragment.icon", localBitmapDrawable.getBitmap());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.f
 * JD-Core Version:    0.7.0.1
 */