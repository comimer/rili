package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.DataSetObserver;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AbsListView;
import android.widget.AbsSpinner;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.c;
import androidx.appcompat.app.c.a;
import androidx.appcompat.app.g;
import androidx.appcompat.view.menu.p;
import androidx.core.view.a0;

public class AppCompatSpinner
  extends Spinner
{
  private static final int[] i = { 16843505 };
  private final d a;
  private final Context b;
  private h0 c;
  private SpinnerAdapter d;
  private final boolean e;
  private f f;
  int g;
  final Rect h;
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.a.L);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this(paramContext, paramAttributeSet, paramInt1, paramInt2, null);
  }
  
  /* Error */
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, Resources.Theme paramTheme)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial 70	android/widget/Spinner:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new 72	android/graphics/Rect
    //   11: dup
    //   12: invokespecial 74	android/graphics/Rect:<init>	()V
    //   15: putfield 76	androidx/appcompat/widget/AppCompatSpinner:h	Landroid/graphics/Rect;
    //   18: aload_0
    //   19: aload_0
    //   20: invokevirtual 82	android/view/View:getContext	()Landroid/content/Context;
    //   23: invokestatic 87	androidx/appcompat/widget/u0:a	(Landroid/view/View;Landroid/content/Context;)V
    //   26: aload_1
    //   27: aload_2
    //   28: getstatic 92	d/j:x2	[I
    //   31: iload_3
    //   32: iconst_0
    //   33: invokestatic 98	androidx/appcompat/widget/z0:v	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/z0;
    //   36: astore 6
    //   38: aload_0
    //   39: new 100	androidx/appcompat/widget/d
    //   42: dup
    //   43: aload_0
    //   44: invokespecial 103	androidx/appcompat/widget/d:<init>	(Landroid/view/View;)V
    //   47: putfield 105	androidx/appcompat/widget/AppCompatSpinner:a	Landroidx/appcompat/widget/d;
    //   50: aload 5
    //   52: ifnull +20 -> 72
    //   55: aload_0
    //   56: new 107	h/d
    //   59: dup
    //   60: aload_1
    //   61: aload 5
    //   63: invokespecial 110	h/d:<init>	(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    //   66: putfield 112	androidx/appcompat/widget/AppCompatSpinner:b	Landroid/content/Context;
    //   69: goto +41 -> 110
    //   72: aload 6
    //   74: getstatic 115	d/j:C2	I
    //   77: iconst_0
    //   78: invokevirtual 119	androidx/appcompat/widget/z0:n	(II)I
    //   81: istore 7
    //   83: iload 7
    //   85: ifeq +20 -> 105
    //   88: aload_0
    //   89: new 107	h/d
    //   92: dup
    //   93: aload_1
    //   94: iload 7
    //   96: invokespecial 122	h/d:<init>	(Landroid/content/Context;I)V
    //   99: putfield 112	androidx/appcompat/widget/AppCompatSpinner:b	Landroid/content/Context;
    //   102: goto +8 -> 110
    //   105: aload_0
    //   106: aload_1
    //   107: putfield 112	androidx/appcompat/widget/AppCompatSpinner:b	Landroid/content/Context;
    //   110: aconst_null
    //   111: astore 8
    //   113: iload 4
    //   115: istore 7
    //   117: iload 4
    //   119: iconst_m1
    //   120: if_icmpne +122 -> 242
    //   123: aload_1
    //   124: aload_2
    //   125: getstatic 50	androidx/appcompat/widget/AppCompatSpinner:i	[I
    //   128: iload_3
    //   129: iconst_0
    //   130: invokevirtual 128	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   133: astore 5
    //   135: iload 4
    //   137: istore 7
    //   139: aload 5
    //   141: astore 9
    //   143: aload 5
    //   145: astore 8
    //   147: aload 5
    //   149: iconst_0
    //   150: invokevirtual 134	android/content/res/TypedArray:hasValue	(I)Z
    //   153: ifeq +20 -> 173
    //   156: aload 5
    //   158: astore 8
    //   160: aload 5
    //   162: iconst_0
    //   163: iconst_0
    //   164: invokevirtual 137	android/content/res/TypedArray:getInt	(II)I
    //   167: istore 7
    //   169: aload 5
    //   171: astore 9
    //   173: aload 9
    //   175: invokevirtual 140	android/content/res/TypedArray:recycle	()V
    //   178: goto +64 -> 242
    //   181: astore 9
    //   183: goto +12 -> 195
    //   186: astore_1
    //   187: goto +43 -> 230
    //   190: astore 9
    //   192: aconst_null
    //   193: astore 5
    //   195: aload 5
    //   197: astore 8
    //   199: ldc 142
    //   201: ldc 144
    //   203: aload 9
    //   205: invokestatic 149	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   208: pop
    //   209: iload 4
    //   211: istore 7
    //   213: aload 5
    //   215: ifnull +27 -> 242
    //   218: iload 4
    //   220: istore 7
    //   222: aload 5
    //   224: astore 9
    //   226: goto -53 -> 173
    //   229: astore_1
    //   230: aload 8
    //   232: ifnull +8 -> 240
    //   235: aload 8
    //   237: invokevirtual 140	android/content/res/TypedArray:recycle	()V
    //   240: aload_1
    //   241: athrow
    //   242: iload 7
    //   244: ifeq +112 -> 356
    //   247: iload 7
    //   249: iconst_1
    //   250: if_icmpeq +6 -> 256
    //   253: goto +134 -> 387
    //   256: new 21	androidx/appcompat/widget/AppCompatSpinner$e
    //   259: dup
    //   260: aload_0
    //   261: aload_0
    //   262: getfield 112	androidx/appcompat/widget/AppCompatSpinner:b	Landroid/content/Context;
    //   265: aload_2
    //   266: iload_3
    //   267: invokespecial 152	androidx/appcompat/widget/AppCompatSpinner$e:<init>	(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   270: astore 8
    //   272: aload_0
    //   273: getfield 112	androidx/appcompat/widget/AppCompatSpinner:b	Landroid/content/Context;
    //   276: aload_2
    //   277: getstatic 92	d/j:x2	[I
    //   280: iload_3
    //   281: iconst_0
    //   282: invokestatic 98	androidx/appcompat/widget/z0:v	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/z0;
    //   285: astore 5
    //   287: aload_0
    //   288: aload 5
    //   290: getstatic 155	d/j:B2	I
    //   293: bipush 254
    //   295: invokevirtual 158	androidx/appcompat/widget/z0:m	(II)I
    //   298: putfield 160	androidx/appcompat/widget/AppCompatSpinner:g	I
    //   301: aload 8
    //   303: aload 5
    //   305: getstatic 163	d/j:z2	I
    //   308: invokevirtual 166	androidx/appcompat/widget/z0:g	(I)Landroid/graphics/drawable/Drawable;
    //   311: invokevirtual 172	androidx/appcompat/widget/l0:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   314: aload 8
    //   316: aload 6
    //   318: getstatic 175	d/j:A2	I
    //   321: invokevirtual 179	androidx/appcompat/widget/z0:o	(I)Ljava/lang/String;
    //   324: invokevirtual 182	androidx/appcompat/widget/AppCompatSpinner$e:e	(Ljava/lang/CharSequence;)V
    //   327: aload 5
    //   329: invokevirtual 185	androidx/appcompat/widget/z0:w	()V
    //   332: aload_0
    //   333: aload 8
    //   335: putfield 187	androidx/appcompat/widget/AppCompatSpinner:f	Landroidx/appcompat/widget/AppCompatSpinner$f;
    //   338: aload_0
    //   339: new 11	androidx/appcompat/widget/AppCompatSpinner$a
    //   342: dup
    //   343: aload_0
    //   344: aload_0
    //   345: aload 8
    //   347: invokespecial 190	androidx/appcompat/widget/AppCompatSpinner$a:<init>	(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$e;)V
    //   350: putfield 192	androidx/appcompat/widget/AppCompatSpinner:c	Landroidx/appcompat/widget/h0;
    //   353: goto +34 -> 387
    //   356: new 15	androidx/appcompat/widget/AppCompatSpinner$c
    //   359: dup
    //   360: aload_0
    //   361: invokespecial 195	androidx/appcompat/widget/AppCompatSpinner$c:<init>	(Landroidx/appcompat/widget/AppCompatSpinner;)V
    //   364: astore 5
    //   366: aload_0
    //   367: aload 5
    //   369: putfield 187	androidx/appcompat/widget/AppCompatSpinner:f	Landroidx/appcompat/widget/AppCompatSpinner$f;
    //   372: aload 5
    //   374: aload 6
    //   376: getstatic 175	d/j:A2	I
    //   379: invokevirtual 179	androidx/appcompat/widget/z0:o	(I)Ljava/lang/String;
    //   382: invokeinterface 196 2 0
    //   387: aload 6
    //   389: getstatic 199	d/j:y2	I
    //   392: invokevirtual 203	androidx/appcompat/widget/z0:q	(I)[Ljava/lang/CharSequence;
    //   395: astore 5
    //   397: aload 5
    //   399: ifnull +28 -> 427
    //   402: new 205	android/widget/ArrayAdapter
    //   405: dup
    //   406: aload_1
    //   407: ldc 206
    //   409: aload 5
    //   411: invokespecial 209	android/widget/ArrayAdapter:<init>	(Landroid/content/Context;I[Ljava/lang/Object;)V
    //   414: astore_1
    //   415: aload_1
    //   416: getstatic 214	d/g:s	I
    //   419: invokevirtual 218	android/widget/ArrayAdapter:setDropDownViewResource	(I)V
    //   422: aload_0
    //   423: aload_1
    //   424: invokevirtual 222	androidx/appcompat/widget/AppCompatSpinner:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   427: aload 6
    //   429: invokevirtual 185	androidx/appcompat/widget/z0:w	()V
    //   432: aload_0
    //   433: iconst_1
    //   434: putfield 224	androidx/appcompat/widget/AppCompatSpinner:e	Z
    //   437: aload_0
    //   438: getfield 226	androidx/appcompat/widget/AppCompatSpinner:d	Landroid/widget/SpinnerAdapter;
    //   441: astore_1
    //   442: aload_1
    //   443: ifnull +13 -> 456
    //   446: aload_0
    //   447: aload_1
    //   448: invokevirtual 222	androidx/appcompat/widget/AppCompatSpinner:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   451: aload_0
    //   452: aconst_null
    //   453: putfield 226	androidx/appcompat/widget/AppCompatSpinner:d	Landroid/widget/SpinnerAdapter;
    //   456: aload_0
    //   457: getfield 105	androidx/appcompat/widget/AppCompatSpinner:a	Landroidx/appcompat/widget/d;
    //   460: aload_2
    //   461: iload_3
    //   462: invokevirtual 229	androidx/appcompat/widget/d:e	(Landroid/util/AttributeSet;I)V
    //   465: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	466	0	this	AppCompatSpinner
    //   0	466	1	paramContext	Context
    //   0	466	2	paramAttributeSet	AttributeSet
    //   0	466	3	paramInt1	int
    //   0	466	4	paramInt2	int
    //   0	466	5	paramTheme	Resources.Theme
    //   36	392	6	localz0	z0
    //   81	170	7	j	int
    //   111	235	8	localObject	Object
    //   141	33	9	localTheme1	Resources.Theme
    //   181	1	9	localException1	java.lang.Exception
    //   190	14	9	localException2	java.lang.Exception
    //   224	1	9	localTheme2	Resources.Theme
    // Exception table:
    //   from	to	target	type
    //   147	156	181	java/lang/Exception
    //   160	169	181	java/lang/Exception
    //   123	135	186	finally
    //   123	135	190	java/lang/Exception
    //   147	156	229	finally
    //   160	169	229	finally
    //   199	209	229	finally
  }
  
  int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    int j = 0;
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int k = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int m = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int n = Math.max(0, getSelectedItemPosition());
    int i1 = Math.min(paramSpinnerAdapter.getCount(), n + 15);
    int i2 = Math.max(0, n - (15 - (i1 - n)));
    View localView = null;
    n = 0;
    while (i2 < i1)
    {
      int i3 = paramSpinnerAdapter.getItemViewType(i2);
      int i4 = j;
      if (i3 != j)
      {
        localView = null;
        i4 = i3;
      }
      localView = paramSpinnerAdapter.getView(i2, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(k, m);
      n = Math.max(n, localView.getMeasuredWidth());
      i2++;
      j = i4;
    }
    i2 = n;
    if (paramDrawable != null)
    {
      paramDrawable.getPadding(this.h);
      paramSpinnerAdapter = this.h;
      i2 = n + (paramSpinnerAdapter.left + paramSpinnerAdapter.right);
    }
    return i2;
  }
  
  void b()
  {
    this.f.l(getTextDirection(), getTextAlignment());
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    d locald = this.a;
    if (locald != null) {
      locald.b();
    }
  }
  
  public int getDropDownHorizontalOffset()
  {
    f localf = this.f;
    if (localf != null) {
      return localf.b();
    }
    return super.getDropDownHorizontalOffset();
  }
  
  public int getDropDownVerticalOffset()
  {
    f localf = this.f;
    if (localf != null) {
      return localf.h();
    }
    return super.getDropDownVerticalOffset();
  }
  
  public int getDropDownWidth()
  {
    if (this.f != null) {
      return this.g;
    }
    return super.getDropDownWidth();
  }
  
  final f getInternalPopup()
  {
    return this.f;
  }
  
  public Drawable getPopupBackground()
  {
    f localf = this.f;
    if (localf != null) {
      return localf.getBackground();
    }
    return super.getPopupBackground();
  }
  
  public Context getPopupContext()
  {
    return this.b;
  }
  
  public CharSequence getPrompt()
  {
    Object localObject = this.f;
    if (localObject != null) {
      localObject = ((f)localObject).d();
    } else {
      localObject = super.getPrompt();
    }
    return localObject;
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    Object localObject = this.a;
    if (localObject != null) {
      localObject = ((d)localObject).c();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    Object localObject = this.a;
    if (localObject != null) {
      localObject = ((d)localObject).d();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    f localf = this.f;
    if ((localf != null) && (localf.isShowing())) {
      this.f.dismiss();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.f != null) && (View.MeasureSpec.getMode(paramInt1) == -2147483648)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (paramParcelable.mShowDropdown)
    {
      paramParcelable = getViewTreeObserver();
      if (paramParcelable != null) {
        paramParcelable.addOnGlobalLayoutListener(new b());
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    f localf = this.f;
    boolean bool;
    if ((localf != null) && (localf.isShowing())) {
      bool = true;
    } else {
      bool = false;
    }
    localSavedState.mShowDropdown = bool;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    h0 localh0 = this.c;
    if ((localh0 != null) && (localh0.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    f localf = this.f;
    if (localf != null)
    {
      if (!localf.isShowing()) {
        b();
      }
      return true;
    }
    return super.performClick();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (!this.e)
    {
      this.d = paramSpinnerAdapter;
      return;
    }
    super.setAdapter(paramSpinnerAdapter);
    if (this.f != null)
    {
      Context localContext1 = this.b;
      Context localContext2 = localContext1;
      if (localContext1 == null) {
        localContext2 = getContext();
      }
      this.f.i(new d(paramSpinnerAdapter, localContext2.getTheme()));
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    d locald = this.a;
    if (locald != null) {
      locald.f(paramDrawable);
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    d locald = this.a;
    if (locald != null) {
      locald.g(paramInt);
    }
  }
  
  public void setDropDownHorizontalOffset(int paramInt)
  {
    f localf = this.f;
    if (localf != null)
    {
      localf.g(paramInt);
      this.f.c(paramInt);
    }
    else
    {
      super.setDropDownHorizontalOffset(paramInt);
    }
  }
  
  public void setDropDownVerticalOffset(int paramInt)
  {
    f localf = this.f;
    if (localf != null) {
      localf.f(paramInt);
    } else {
      super.setDropDownVerticalOffset(paramInt);
    }
  }
  
  public void setDropDownWidth(int paramInt)
  {
    if (this.f != null) {
      this.g = paramInt;
    } else {
      super.setDropDownWidth(paramInt);
    }
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    f localf = this.f;
    if (localf != null) {
      localf.setBackgroundDrawable(paramDrawable);
    } else {
      super.setPopupBackgroundDrawable(paramDrawable);
    }
  }
  
  public void setPopupBackgroundResource(int paramInt)
  {
    setPopupBackgroundDrawable(e.a.b(getPopupContext(), paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence)
  {
    f localf = this.f;
    if (localf != null) {
      localf.e(paramCharSequence);
    } else {
      super.setPrompt(paramCharSequence);
    }
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    d locald = this.a;
    if (locald != null) {
      locald.i(paramColorStateList);
    }
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    d locald = this.a;
    if (locald != null) {
      locald.j(paramMode);
    }
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    boolean mShowDropdown;
    
    SavedState(Parcel paramParcel)
    {
      super();
      boolean bool;
      if (paramParcel.readByte() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      this.mShowDropdown = bool;
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeByte((byte)this.mShowDropdown);
    }
    
    class a
      implements Parcelable.Creator<AppCompatSpinner.SavedState>
    {
      public AppCompatSpinner.SavedState a(Parcel paramParcel)
      {
        return new AppCompatSpinner.SavedState(paramParcel);
      }
      
      public AppCompatSpinner.SavedState[] b(int paramInt)
      {
        return new AppCompatSpinner.SavedState[paramInt];
      }
    }
  }
  
  class a
    extends h0
  {
    a(View paramView, AppCompatSpinner.e parame)
    {
      super();
    }
    
    public p b()
    {
      return this.j;
    }
    
    @SuppressLint({"SyntheticAccessor"})
    public boolean c()
    {
      if (!AppCompatSpinner.this.getInternalPopup().isShowing()) {
        AppCompatSpinner.this.b();
      }
      return true;
    }
  }
  
  class b
    implements ViewTreeObserver.OnGlobalLayoutListener
  {
    b() {}
    
    public void onGlobalLayout()
    {
      if (!AppCompatSpinner.this.getInternalPopup().isShowing()) {
        AppCompatSpinner.this.b();
      }
      ViewTreeObserver localViewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
      if (localViewTreeObserver != null) {
        localViewTreeObserver.removeOnGlobalLayoutListener(this);
      }
    }
  }
  
  class c
    implements AppCompatSpinner.f, DialogInterface.OnClickListener
  {
    c a;
    private ListAdapter b;
    private CharSequence c;
    
    c() {}
    
    public int b()
    {
      return 0;
    }
    
    public void c(int paramInt)
    {
      Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }
    
    public CharSequence d()
    {
      return this.c;
    }
    
    public void dismiss()
    {
      c localc = this.a;
      if (localc != null)
      {
        localc.dismiss();
        this.a = null;
      }
    }
    
    public void e(CharSequence paramCharSequence)
    {
      this.c = paramCharSequence;
    }
    
    public void f(int paramInt)
    {
      Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }
    
    public void g(int paramInt)
    {
      Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }
    
    public Drawable getBackground()
    {
      return null;
    }
    
    public int h()
    {
      return 0;
    }
    
    public void i(ListAdapter paramListAdapter)
    {
      this.b = paramListAdapter;
    }
    
    public boolean isShowing()
    {
      c localc = this.a;
      boolean bool;
      if (localc != null) {
        bool = localc.isShowing();
      } else {
        bool = false;
      }
      return bool;
    }
    
    public void l(int paramInt1, int paramInt2)
    {
      if (this.b == null) {
        return;
      }
      c.a locala = new c.a(AppCompatSpinner.this.getPopupContext());
      Object localObject = this.c;
      if (localObject != null) {
        locala.setTitle((CharSequence)localObject);
      }
      localObject = locala.setSingleChoiceItems(this.b, AppCompatSpinner.this.getSelectedItemPosition(), this).create();
      this.a = ((c)localObject);
      localObject = ((c)localObject).a();
      ((View)localObject).setTextDirection(paramInt1);
      ((View)localObject).setTextAlignment(paramInt2);
      this.a.show();
    }
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      AppCompatSpinner.this.setSelection(paramInt);
      if (AppCompatSpinner.this.getOnItemClickListener() != null) {
        AppCompatSpinner.this.performItemClick(null, paramInt, this.b.getItemId(paramInt));
      }
      dismiss();
    }
    
    public void setBackgroundDrawable(Drawable paramDrawable)
    {
      Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }
  }
  
  private static class d
    implements ListAdapter, SpinnerAdapter
  {
    private SpinnerAdapter a;
    private ListAdapter b;
    
    public d(SpinnerAdapter paramSpinnerAdapter, Resources.Theme paramTheme)
    {
      this.a = paramSpinnerAdapter;
      if ((paramSpinnerAdapter instanceof ListAdapter)) {
        this.b = ((ListAdapter)paramSpinnerAdapter);
      }
      if (paramTheme != null) {
        if ((paramSpinnerAdapter instanceof ThemedSpinnerAdapter))
        {
          paramSpinnerAdapter = (ThemedSpinnerAdapter)paramSpinnerAdapter;
          if (paramSpinnerAdapter.getDropDownViewTheme() != paramTheme) {
            paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
          }
        }
        else if ((paramSpinnerAdapter instanceof v0))
        {
          paramSpinnerAdapter = (v0)paramSpinnerAdapter;
          if (paramSpinnerAdapter.getDropDownViewTheme() == null) {
            paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
          }
        }
      }
    }
    
    public boolean areAllItemsEnabled()
    {
      ListAdapter localListAdapter = this.b;
      if (localListAdapter != null) {
        return localListAdapter.areAllItemsEnabled();
      }
      return true;
    }
    
    public int getCount()
    {
      SpinnerAdapter localSpinnerAdapter = this.a;
      int i;
      if (localSpinnerAdapter == null) {
        i = 0;
      } else {
        i = localSpinnerAdapter.getCount();
      }
      return i;
    }
    
    public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      SpinnerAdapter localSpinnerAdapter = this.a;
      if (localSpinnerAdapter == null) {
        paramView = null;
      } else {
        paramView = localSpinnerAdapter.getDropDownView(paramInt, paramView, paramViewGroup);
      }
      return paramView;
    }
    
    public Object getItem(int paramInt)
    {
      Object localObject = this.a;
      if (localObject == null) {
        localObject = null;
      } else {
        localObject = ((Adapter)localObject).getItem(paramInt);
      }
      return localObject;
    }
    
    public long getItemId(int paramInt)
    {
      SpinnerAdapter localSpinnerAdapter = this.a;
      long l;
      if (localSpinnerAdapter == null) {
        l = -1L;
      } else {
        l = localSpinnerAdapter.getItemId(paramInt);
      }
      return l;
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      return getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public int getViewTypeCount()
    {
      return 1;
    }
    
    public boolean hasStableIds()
    {
      SpinnerAdapter localSpinnerAdapter = this.a;
      boolean bool;
      if ((localSpinnerAdapter != null) && (localSpinnerAdapter.hasStableIds())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean isEmpty()
    {
      boolean bool;
      if (getCount() == 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean isEnabled(int paramInt)
    {
      ListAdapter localListAdapter = this.b;
      if (localListAdapter != null) {
        return localListAdapter.isEnabled(paramInt);
      }
      return true;
    }
    
    public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      SpinnerAdapter localSpinnerAdapter = this.a;
      if (localSpinnerAdapter != null) {
        localSpinnerAdapter.registerDataSetObserver(paramDataSetObserver);
      }
    }
    
    public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      SpinnerAdapter localSpinnerAdapter = this.a;
      if (localSpinnerAdapter != null) {
        localSpinnerAdapter.unregisterDataSetObserver(paramDataSetObserver);
      }
    }
  }
  
  class e
    extends l0
    implements AppCompatSpinner.f
  {
    private CharSequence O;
    ListAdapter P;
    private final Rect Q = new Rect();
    private int R;
    
    public e(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
      z(AppCompatSpinner.this);
      F(true);
      K(0);
      H(new a(AppCompatSpinner.this));
    }
    
    void O()
    {
      Object localObject = getBackground();
      int i = 0;
      if (localObject != null)
      {
        ((Drawable)localObject).getPadding(AppCompatSpinner.this.h);
        if (e1.b(AppCompatSpinner.this)) {
          i = AppCompatSpinner.this.h.right;
        } else {
          i = -AppCompatSpinner.this.h.left;
        }
      }
      else
      {
        localObject = AppCompatSpinner.this.h;
        ((Rect)localObject).right = 0;
        ((Rect)localObject).left = 0;
      }
      int j = AppCompatSpinner.this.getPaddingLeft();
      int k = AppCompatSpinner.this.getPaddingRight();
      int m = AppCompatSpinner.this.getWidth();
      localObject = AppCompatSpinner.this;
      int n = ((AppCompatSpinner)localObject).g;
      if (n == -2)
      {
        int i1 = ((AppCompatSpinner)localObject).a((SpinnerAdapter)this.P, getBackground());
        n = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
        localObject = AppCompatSpinner.this.h;
        int i2 = n - ((Rect)localObject).left - ((Rect)localObject).right;
        n = i1;
        if (i1 > i2) {
          n = i2;
        }
        B(Math.max(n, m - j - k));
      }
      else if (n == -1)
      {
        B(m - j - k);
      }
      else
      {
        B(n);
      }
      if (e1.b(AppCompatSpinner.this)) {
        i += m - k - v() - P();
      } else {
        i += j + P();
      }
      c(i);
    }
    
    public int P()
    {
      return this.R;
    }
    
    boolean Q(View paramView)
    {
      boolean bool;
      if ((a0.O(paramView)) && (paramView.getGlobalVisibleRect(this.Q))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public CharSequence d()
    {
      return this.O;
    }
    
    public void e(CharSequence paramCharSequence)
    {
      this.O = paramCharSequence;
    }
    
    public void g(int paramInt)
    {
      this.R = paramInt;
    }
    
    public void i(ListAdapter paramListAdapter)
    {
      super.i(paramListAdapter);
      this.P = paramListAdapter;
    }
    
    public void l(int paramInt1, int paramInt2)
    {
      boolean bool = isShowing();
      O();
      E(2);
      super.show();
      Object localObject = k();
      ((AbsListView)localObject).setChoiceMode(1);
      ((View)localObject).setTextDirection(paramInt1);
      ((View)localObject).setTextAlignment(paramInt2);
      L(AppCompatSpinner.this.getSelectedItemPosition());
      if (bool) {
        return;
      }
      ViewTreeObserver localViewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
      if (localViewTreeObserver != null)
      {
        localObject = new b();
        localViewTreeObserver.addOnGlobalLayoutListener((ViewTreeObserver.OnGlobalLayoutListener)localObject);
        G(new c((ViewTreeObserver.OnGlobalLayoutListener)localObject));
      }
    }
    
    class a
      implements AdapterView.OnItemClickListener
    {
      a(AppCompatSpinner paramAppCompatSpinner) {}
      
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        AppCompatSpinner.this.setSelection(paramInt);
        if (AppCompatSpinner.this.getOnItemClickListener() != null)
        {
          paramAdapterView = AppCompatSpinner.e.this;
          paramAdapterView.S.performItemClick(paramView, paramInt, paramAdapterView.P.getItemId(paramInt));
        }
        AppCompatSpinner.e.this.dismiss();
      }
    }
    
    class b
      implements ViewTreeObserver.OnGlobalLayoutListener
    {
      b() {}
      
      public void onGlobalLayout()
      {
        AppCompatSpinner.e locale = AppCompatSpinner.e.this;
        if (!locale.Q(locale.S))
        {
          AppCompatSpinner.e.this.dismiss();
        }
        else
        {
          AppCompatSpinner.e.this.O();
          AppCompatSpinner.e.N(AppCompatSpinner.e.this);
        }
      }
    }
    
    class c
      implements PopupWindow.OnDismissListener
    {
      c(ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener) {}
      
      public void onDismiss()
      {
        ViewTreeObserver localViewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
        if (localViewTreeObserver != null) {
          localViewTreeObserver.removeGlobalOnLayoutListener(this.a);
        }
      }
    }
  }
  
  static abstract interface f
  {
    public abstract int b();
    
    public abstract void c(int paramInt);
    
    public abstract CharSequence d();
    
    public abstract void dismiss();
    
    public abstract void e(CharSequence paramCharSequence);
    
    public abstract void f(int paramInt);
    
    public abstract void g(int paramInt);
    
    public abstract Drawable getBackground();
    
    public abstract int h();
    
    public abstract void i(ListAdapter paramListAdapter);
    
    public abstract boolean isShowing();
    
    public abstract void l(int paramInt1, int paramInt2);
    
    public abstract void setBackgroundDrawable(Drawable paramDrawable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.AppCompatSpinner
 * JD-Core Version:    0.7.0.1
 */