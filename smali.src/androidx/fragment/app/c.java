package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.n;
import androidx.lifecycle.o0;
import androidx.lifecycle.p0;
import androidx.lifecycle.v;

public class c
  extends Fragment
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  private static final String SAVED_BACK_STACK_ID = "android:backStackId";
  private static final String SAVED_CANCELABLE = "android:cancelable";
  private static final String SAVED_DIALOG_STATE_TAG = "android:savedDialogState";
  private static final String SAVED_INTERNAL_DIALOG_SHOWING = "android:dialogShowing";
  private static final String SAVED_SHOWS_DIALOG = "android:showsDialog";
  private static final String SAVED_STYLE = "android:style";
  private static final String SAVED_THEME = "android:theme";
  public static final int STYLE_NORMAL = 0;
  public static final int STYLE_NO_FRAME = 2;
  public static final int STYLE_NO_INPUT = 3;
  public static final int STYLE_NO_TITLE = 1;
  private int mBackStackId = -1;
  private boolean mCancelable = true;
  private boolean mCreatingDialog;
  private Dialog mDialog;
  private boolean mDialogCreated = false;
  private Runnable mDismissRunnable = new a();
  private boolean mDismissed;
  private Handler mHandler;
  private v<n> mObserver = new d();
  private DialogInterface.OnCancelListener mOnCancelListener = new b();
  private DialogInterface.OnDismissListener mOnDismissListener = new c();
  private boolean mShownByMe;
  private boolean mShowsDialog = true;
  private int mStyle = 0;
  private int mTheme = 0;
  private boolean mViewDestroyed;
  
  public c() {}
  
  public c(int paramInt)
  {
    super(paramInt);
  }
  
  private void dismissInternal(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.mDismissed) {
      return;
    }
    this.mDismissed = true;
    this.mShownByMe = false;
    Object localObject = this.mDialog;
    if (localObject != null)
    {
      ((Dialog)localObject).setOnDismissListener(null);
      this.mDialog.dismiss();
      if (!paramBoolean2) {
        if (Looper.myLooper() == this.mHandler.getLooper()) {
          onDismiss(this.mDialog);
        } else {
          this.mHandler.post(this.mDismissRunnable);
        }
      }
    }
    this.mViewDestroyed = true;
    if (this.mBackStackId >= 0)
    {
      getParentFragmentManager().Y0(this.mBackStackId, 1);
      this.mBackStackId = -1;
    }
    else
    {
      localObject = getParentFragmentManager().m();
      ((s)localObject).p(this);
      if (paramBoolean1) {
        ((s)localObject).i();
      } else {
        ((s)localObject).h();
      }
    }
  }
  
  private void prepareDialog(Bundle paramBundle)
  {
    if (!this.mShowsDialog) {
      return;
    }
    if (!this.mDialogCreated) {
      try
      {
        this.mCreatingDialog = true;
        paramBundle = onCreateDialog(paramBundle);
        this.mDialog = paramBundle;
        if (this.mShowsDialog)
        {
          setupDialog(paramBundle, this.mStyle);
          paramBundle = getContext();
          if ((paramBundle instanceof Activity)) {
            this.mDialog.setOwnerActivity((Activity)paramBundle);
          }
          this.mDialog.setCancelable(this.mCancelable);
          this.mDialog.setOnCancelListener(this.mOnCancelListener);
          this.mDialog.setOnDismissListener(this.mOnDismissListener);
          this.mDialogCreated = true;
        }
        else
        {
          this.mDialog = null;
        }
      }
      finally
      {
        this.mCreatingDialog = false;
      }
    }
  }
  
  f createFragmentContainer()
  {
    return new e(super.createFragmentContainer());
  }
  
  public void dismiss()
  {
    dismissInternal(false, false);
  }
  
  public void dismissAllowingStateLoss()
  {
    dismissInternal(true, false);
  }
  
  public Dialog getDialog()
  {
    return this.mDialog;
  }
  
  public boolean getShowsDialog()
  {
    return this.mShowsDialog;
  }
  
  public int getTheme()
  {
    return this.mTheme;
  }
  
  public boolean isCancelable()
  {
    return this.mCancelable;
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    getViewLifecycleOwnerLiveData().i(this.mObserver);
    if (!this.mShownByMe) {
      this.mDismissed = false;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mHandler = new Handler();
    boolean bool;
    if (this.mContainerId == 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.mShowsDialog = bool;
    if (paramBundle != null)
    {
      this.mStyle = paramBundle.getInt("android:style", 0);
      this.mTheme = paramBundle.getInt("android:theme", 0);
      this.mCancelable = paramBundle.getBoolean("android:cancelable", true);
      this.mShowsDialog = paramBundle.getBoolean("android:showsDialog", this.mShowsDialog);
      this.mBackStackId = paramBundle.getInt("android:backStackId", -1);
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    if (FragmentManager.H0(3))
    {
      paramBundle = new StringBuilder();
      paramBundle.append("onCreateDialog called for DialogFragment ");
      paramBundle.append(this);
      Log.d("FragmentManager", paramBundle.toString());
    }
    return new Dialog(requireContext(), getTheme());
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    Dialog localDialog = this.mDialog;
    if (localDialog != null)
    {
      this.mViewDestroyed = true;
      localDialog.setOnDismissListener(null);
      this.mDialog.dismiss();
      if (!this.mDismissed) {
        onDismiss(this.mDialog);
      }
      this.mDialog = null;
      this.mDialogCreated = false;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    if ((!this.mShownByMe) && (!this.mDismissed)) {
      this.mDismissed = true;
    }
    getViewLifecycleOwnerLiveData().m(this.mObserver);
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!this.mViewDestroyed)
    {
      if (FragmentManager.H0(3))
      {
        paramDialogInterface = new StringBuilder();
        paramDialogInterface.append("onDismiss called for DialogFragment ");
        paramDialogInterface.append(this);
        Log.d("FragmentManager", paramDialogInterface.toString());
      }
      dismissInternal(true, true);
    }
  }
  
  View onFindViewById(int paramInt)
  {
    Dialog localDialog = this.mDialog;
    if (localDialog != null) {
      return localDialog.findViewById(paramInt);
    }
    return null;
  }
  
  public LayoutInflater onGetLayoutInflater(Bundle paramBundle)
  {
    LayoutInflater localLayoutInflater = super.onGetLayoutInflater(paramBundle);
    Object localObject;
    if ((this.mShowsDialog) && (!this.mCreatingDialog))
    {
      prepareDialog(paramBundle);
      if (FragmentManager.H0(2))
      {
        paramBundle = new StringBuilder();
        paramBundle.append("get layout inflater for DialogFragment ");
        paramBundle.append(this);
        paramBundle.append(" from dialog context");
        Log.d("FragmentManager", paramBundle.toString());
      }
      localObject = this.mDialog;
      paramBundle = localLayoutInflater;
      if (localObject != null) {
        paramBundle = localLayoutInflater.cloneInContext(((Dialog)localObject).getContext());
      }
      return paramBundle;
    }
    if (FragmentManager.H0(2))
    {
      paramBundle = new StringBuilder();
      paramBundle.append("getting layout inflater for DialogFragment ");
      paramBundle.append(this);
      paramBundle = paramBundle.toString();
      if (!this.mShowsDialog)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("mShowsDialog = false: ");
        ((StringBuilder)localObject).append(paramBundle);
        Log.d("FragmentManager", ((StringBuilder)localObject).toString());
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("mCreatingDialog = true: ");
        ((StringBuilder)localObject).append(paramBundle);
        Log.d("FragmentManager", ((StringBuilder)localObject).toString());
      }
    }
    return localLayoutInflater;
  }
  
  boolean onHasView()
  {
    return this.mDialogCreated;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Object localObject = this.mDialog;
    if (localObject != null)
    {
      localObject = ((Dialog)localObject).onSaveInstanceState();
      ((BaseBundle)localObject).putBoolean("android:dialogShowing", false);
      paramBundle.putBundle("android:savedDialogState", (Bundle)localObject);
    }
    int i = this.mStyle;
    if (i != 0) {
      paramBundle.putInt("android:style", i);
    }
    i = this.mTheme;
    if (i != 0) {
      paramBundle.putInt("android:theme", i);
    }
    boolean bool = this.mCancelable;
    if (!bool) {
      paramBundle.putBoolean("android:cancelable", bool);
    }
    bool = this.mShowsDialog;
    if (!bool) {
      paramBundle.putBoolean("android:showsDialog", bool);
    }
    i = this.mBackStackId;
    if (i != -1) {
      paramBundle.putInt("android:backStackId", i);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    Object localObject = this.mDialog;
    if (localObject != null)
    {
      this.mViewDestroyed = false;
      ((Dialog)localObject).show();
      localObject = this.mDialog.getWindow().getDecorView();
      o0.a((View)localObject, this);
      p0.a((View)localObject, this);
      androidx.savedstate.f.a((View)localObject, this);
    }
  }
  
  public void onStop()
  {
    super.onStop();
    Dialog localDialog = this.mDialog;
    if (localDialog != null) {
      localDialog.hide();
    }
  }
  
  public void onViewStateRestored(Bundle paramBundle)
  {
    super.onViewStateRestored(paramBundle);
    if ((this.mDialog != null) && (paramBundle != null))
    {
      paramBundle = paramBundle.getBundle("android:savedDialogState");
      if (paramBundle != null) {
        this.mDialog.onRestoreInstanceState(paramBundle);
      }
    }
  }
  
  void performCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.performCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if ((this.mView == null) && (this.mDialog != null) && (paramBundle != null))
    {
      paramLayoutInflater = paramBundle.getBundle("android:savedDialogState");
      if (paramLayoutInflater != null) {
        this.mDialog.onRestoreInstanceState(paramLayoutInflater);
      }
    }
  }
  
  public final Dialog requireDialog()
  {
    Object localObject = getDialog();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("DialogFragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" does not have a Dialog.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  public void setCancelable(boolean paramBoolean)
  {
    this.mCancelable = paramBoolean;
    Dialog localDialog = this.mDialog;
    if (localDialog != null) {
      localDialog.setCancelable(paramBoolean);
    }
  }
  
  public void setShowsDialog(boolean paramBoolean)
  {
    this.mShowsDialog = paramBoolean;
  }
  
  public void setStyle(int paramInt1, int paramInt2)
  {
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Setting style and theme for DialogFragment ");
      localStringBuilder.append(this);
      localStringBuilder.append(" to ");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append(", ");
      localStringBuilder.append(paramInt2);
      Log.d("FragmentManager", localStringBuilder.toString());
    }
    this.mStyle = paramInt1;
    if ((paramInt1 == 2) || (paramInt1 == 3)) {
      this.mTheme = 16973913;
    }
    if (paramInt2 != 0) {
      this.mTheme = paramInt2;
    }
  }
  
  public void setupDialog(Dialog paramDialog, int paramInt)
  {
    if ((paramInt != 1) && (paramInt != 2))
    {
      if (paramInt != 3) {
        return;
      }
      Window localWindow = paramDialog.getWindow();
      if (localWindow != null) {
        localWindow.addFlags(24);
      }
    }
    paramDialog.requestWindowFeature(1);
  }
  
  public int show(s params, String paramString)
  {
    this.mDismissed = false;
    this.mShownByMe = true;
    params.e(this, paramString);
    this.mViewDestroyed = false;
    int i = params.h();
    this.mBackStackId = i;
    return i;
  }
  
  public void show(FragmentManager paramFragmentManager, String paramString)
  {
    this.mDismissed = false;
    this.mShownByMe = true;
    paramFragmentManager = paramFragmentManager.m();
    paramFragmentManager.e(this, paramString);
    paramFragmentManager.h();
  }
  
  public void showNow(FragmentManager paramFragmentManager, String paramString)
  {
    this.mDismissed = false;
    this.mShownByMe = true;
    paramFragmentManager = paramFragmentManager.m();
    paramFragmentManager.e(this, paramString);
    paramFragmentManager.j();
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    @SuppressLint({"SyntheticAccessor"})
    public void run()
    {
      c.this.mOnDismissListener.onDismiss(c.this.mDialog);
    }
  }
  
  class b
    implements DialogInterface.OnCancelListener
  {
    b() {}
    
    @SuppressLint({"SyntheticAccessor"})
    public void onCancel(DialogInterface paramDialogInterface)
    {
      if (c.this.mDialog != null)
      {
        paramDialogInterface = c.this;
        paramDialogInterface.onCancel(paramDialogInterface.mDialog);
      }
    }
  }
  
  class c
    implements DialogInterface.OnDismissListener
  {
    c() {}
    
    @SuppressLint({"SyntheticAccessor"})
    public void onDismiss(DialogInterface paramDialogInterface)
    {
      if (c.this.mDialog != null)
      {
        paramDialogInterface = c.this;
        paramDialogInterface.onDismiss(paramDialogInterface.mDialog);
      }
    }
  }
  
  class d
    implements v<n>
  {
    d() {}
    
    @SuppressLint({"SyntheticAccessor"})
    public void a(n paramn)
    {
      if ((paramn != null) && (c.this.mShowsDialog))
      {
        View localView = c.this.requireView();
        if (localView.getParent() == null)
        {
          if (c.this.mDialog != null)
          {
            if (FragmentManager.H0(3))
            {
              paramn = new StringBuilder();
              paramn.append("DialogFragment ");
              paramn.append(this);
              paramn.append(" setting the content view on ");
              paramn.append(c.this.mDialog);
              Log.d("FragmentManager", paramn.toString());
            }
            c.this.mDialog.setContentView(localView);
          }
        }
        else {
          throw new IllegalStateException("DialogFragment can not be attached to a container view");
        }
      }
    }
  }
  
  class e
    extends f
  {
    e(f paramf) {}
    
    public View c(int paramInt)
    {
      if (this.a.d()) {
        return this.a.c(paramInt);
      }
      return c.this.onFindViewById(paramInt);
    }
    
    public boolean d()
    {
      boolean bool;
      if ((!this.a.d()) && (!c.this.onHasView())) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.c
 * JD-Core Version:    0.7.0.1
 */