package com.xiaomi.passport.ui.internal;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ExpandableListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import android.widget.WrapperListAdapter;
import androidx.appcompat.widget.AppCompatTextView;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import n5.a;
import n5.e;
import n5.i;

@SuppressLint({"NewApi"})
public class AlphabetFastIndexer
  extends AppCompatTextView
{
  private AdapterView<?> a;
  private TextView b;
  private int c;
  private e d;
  private ValueAnimator.AnimatorUpdateListener e = new a();
  private int f;
  private int g;
  private Runnable h;
  private Handler i;
  private String[] j;
  
  public AlphabetFastIndexer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AlphabetFastIndexer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    int k = 0;
    this.f = 0;
    this.g = 0;
    this.h = new b();
    this.i = new c();
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, i.j0, paramInt, 0);
    Resources localResources = paramContext.getResources();
    paramAttributeSet = localTypedArray.getTextArray(i.k0);
    if (paramAttributeSet != null)
    {
      this.j = new String[paramAttributeSet.length];
      int m = paramAttributeSet.length;
      for (paramInt = 0; k < m; paramInt++)
      {
        localResources = paramAttributeSet[k];
        this.j[paramInt] = localResources.toString();
        k++;
      }
    }
    this.j = localResources.getStringArray(a.b);
    this.d = new e(paramContext, localTypedArray);
    localTypedArray.recycle();
  }
  
  private int getListOffset()
  {
    AdapterView localAdapterView = this.a;
    if ((localAdapterView instanceof ListView)) {
      return ((ListView)localAdapterView).getHeaderViewsCount();
    }
    return 0;
  }
  
  private SectionIndexer getSectionIndexer()
  {
    Object localObject = this.a;
    SectionIndexer localSectionIndexer = null;
    if (localObject == null) {
      return null;
    }
    boolean bool;
    for (localObject = ((AdapterView)localObject).getAdapter();; localObject = ((WrapperListAdapter)localObject).getWrappedAdapter())
    {
      bool = localObject instanceof SectionIndexer;
      if ((bool) || (!(localObject instanceof WrapperListAdapter))) {
        break;
      }
    }
    if (bool) {
      localSectionIndexer = (SectionIndexer)localObject;
    }
    return localSectionIndexer;
  }
  
  private void j(CharSequence paramCharSequence)
  {
    if (this.a == null) {
      return;
    }
    Object localObject = paramCharSequence;
    if (TextUtils.equals(paramCharSequence, "!")) {
      localObject = "★";
    }
    this.b.setText((CharSequence)localObject);
    if (getVisibility() == 0)
    {
      this.b.setVisibility(0);
      this.i.removeMessages(1);
      paramCharSequence = this.i.obtainMessage(1);
      this.i.sendMessageDelayed(paramCharSequence, 500L);
    }
  }
  
  private int k(float paramFloat, SectionIndexer paramSectionIndexer)
  {
    paramSectionIndexer = paramSectionIndexer.getSections();
    if (paramSectionIndexer == null) {
      return -1;
    }
    int k = getPaddingTop();
    int m = getPaddingBottom();
    m = getHeight() - k - m;
    if (m <= 0) {
      return -1;
    }
    paramFloat = (paramFloat - k) / m;
    String[] arrayOfString = this.j;
    k = (int)(arrayOfString.length * paramFloat);
    if (k < 0) {
      return -1;
    }
    if (k >= arrayOfString.length) {
      return paramSectionIndexer.length;
    }
    m = Arrays.binarySearch(paramSectionIndexer, arrayOfString[k]);
    k = m;
    if (m < 0) {
      k = -m - 2;
    }
    m = k;
    if (k < 0) {
      m = 0;
    }
    return m;
  }
  
  private void l()
  {
    if (this.a == null) {
      return;
    }
    int k = 0;
    Object localObject = getSectionIndexer();
    int m = k;
    if (localObject != null)
    {
      int n = ((SectionIndexer)localObject).getSectionForPosition(this.a.getFirstVisiblePosition() - getListOffset());
      m = k;
      if (n != -1)
      {
        localObject = (String)localObject.getSections()[n];
        m = k;
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          m = Arrays.binarySearch(this.j, localObject);
        }
      }
    }
    if (this.c != m)
    {
      this.c = m;
      if (1 != this.g) {
        n(m);
      }
      invalidate();
    }
  }
  
  private void m(SectionIndexer paramSectionIndexer, int paramInt)
  {
    int k = this.a.getCount();
    int m = getListOffset();
    float f1 = 1.0F / k / 8.0F;
    Object[] arrayOfObject = paramSectionIndexer.getSections();
    int i8;
    if ((arrayOfObject != null) && (arrayOfObject.length > 1))
    {
      int n = arrayOfObject.length;
      if (paramInt >= n) {
        i1 = n - 1;
      } else {
        i1 = paramInt;
      }
      int i2 = paramSectionIndexer.getPositionForSection(i1);
      int i3 = i1 + 1;
      int i4;
      if (i1 < n - 1) {
        i4 = paramSectionIndexer.getPositionForSection(i3);
      } else {
        i4 = k;
      }
      int i5 = i1;
      int i6 = i2;
      int i7 = i5;
      if (i4 == i2)
      {
        i8 = i2;
        while (i5 > 0)
        {
          i6 = i5 - 1;
          i7 = paramSectionIndexer.getPositionForSection(i6);
          if (i7 != i2)
          {
            i8 = i6;
            break label200;
          }
          i5 = i6;
          i8 = i7;
          if (i6 == 0)
          {
            i5 = i1;
            i8 = 0;
            break label220;
          }
        }
        i6 = i1;
        i7 = i8;
        i8 = i6;
        label200:
        i6 = i7;
        i7 = i8;
      }
      i8 = i7;
      i5 = i7;
      i7 = i6;
      label220:
      i2 = i3 + 1;
      for (i6 = i3; (i2 < n) && (paramSectionIndexer.getPositionForSection(i2) == i4); i6++) {
        i2++;
      }
      float f2 = i5;
      float f3 = n;
      f2 /= f3;
      float f4 = i6 / f3;
      f3 = paramInt / f3;
      if ((i5 != i1) || (f3 - f2 >= f1)) {
        i7 += Math.round((i4 - i7) * (f3 - f2) / (f4 - f2));
      }
      int i1 = k - 1;
      paramInt = i7;
      if (i7 > i1) {
        paramInt = i1;
      }
      paramSectionIndexer = this.a;
      if ((paramSectionIndexer instanceof ExpandableListView))
      {
        paramSectionIndexer = (ExpandableListView)paramSectionIndexer;
        paramSectionIndexer.setSelectionFromTop(paramSectionIndexer.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(paramInt + m)), 0);
      }
      else if ((paramSectionIndexer instanceof ListView))
      {
        ((ListView)paramSectionIndexer).setSelectionFromTop(paramInt + m, 0);
      }
      else
      {
        paramSectionIndexer.setSelection(paramInt + m);
      }
    }
    else
    {
      paramInt = Math.round(paramInt * k);
      paramSectionIndexer = this.a;
      if ((paramSectionIndexer instanceof ExpandableListView))
      {
        paramSectionIndexer = (ExpandableListView)paramSectionIndexer;
        paramSectionIndexer.setSelectionFromTop(paramSectionIndexer.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(paramInt + m)), 0);
      }
      else if ((paramSectionIndexer instanceof ListView))
      {
        ((ListView)paramSectionIndexer).setSelectionFromTop(paramInt + m, 0);
      }
      else
      {
        paramSectionIndexer.setSelection(paramInt + m);
      }
      i8 = -1;
    }
    if ((i8 >= 0) && (arrayOfObject != null))
    {
      paramSectionIndexer = arrayOfObject[i8].toString();
      if (!TextUtils.isEmpty(paramSectionIndexer)) {
        j(paramSectionIndexer.subSequence(0, 1));
      }
    }
  }
  
  private void n(int paramInt)
  {
    if (this.d == null) {
      return;
    }
    int k = paramInt;
    if (paramInt < 0) {
      k = 0;
    }
    paramInt = getPaddingTop();
    float f1 = (getHeight() - paramInt - getPaddingBottom()) / this.j.length;
    float f2 = k;
    float f3 = paramInt;
    float f4 = f1 / 2.0F;
    this.d.b(f2 * f1 + f3 + f4 + 1.0F, this.e);
  }
  
  public void h()
  {
    this.c = -1;
    ViewGroup localViewGroup = (ViewGroup)getParent();
    this.b = ((TextView)localViewGroup.findViewById(e.w));
    this.a = ((AdapterView)localViewGroup.findViewById(e.x));
    this.b.setVisibility(8);
    l();
  }
  
  public void i(CharSequence paramCharSequence)
  {
    if ((this.g == 0) && (this.f == 2)) {
      j(paramCharSequence);
    }
  }
  
  void o(int paramInt)
  {
    setPressed(false);
    this.g = 0;
    postInvalidate();
    this.i.removeMessages(1);
    Object localObject;
    if (paramInt <= 0)
    {
      localObject = this.b;
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
    }
    else
    {
      localObject = this.i.obtainMessage(1);
      this.i.sendMessageDelayed((Message)localObject, paramInt);
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    h();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int k = getPaddingTop();
    int m = getHeight() - k - getPaddingBottom();
    if (m <= 0) {
      return;
    }
    String[] arrayOfString = this.j;
    float f1 = m / arrayOfString.length;
    float f2 = getWidth() / 2.0F;
    float f3 = k + f1 / 2.0F;
    for (k = 0; k < arrayOfString.length; k++)
    {
      this.d.a(paramCanvas, isPressed(), k, f2, f3);
      f3 += f1;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    this.c = -1;
    post(this.h);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    Object localObject = this.a;
    int k = 0;
    if (localObject == null)
    {
      o(0);
      return false;
    }
    localObject = getSectionIndexer();
    if (localObject == null)
    {
      o(0);
      return false;
    }
    int m = paramMotionEvent.getAction() & 0xFF;
    if (m != 0)
    {
      if (m != 1)
      {
        if (m == 2) {
          break label94;
        }
        if (m != 3) {}
      }
      else
      {
        postInvalidate();
      }
      o(500);
      break label175;
    }
    else
    {
      this.g = 1;
      setPressed(true);
    }
    label94:
    m = k(paramMotionEvent.getY(), (SectionIndexer)localObject);
    if (m >= 0) {
      if (m >= ((SectionIndexer)localObject).getSections().length) {
        k = ((SectionIndexer)localObject).getSections().length - 1;
      } else {
        k = m;
      }
    }
    m((SectionIndexer)localObject, k);
    localObject = this.d;
    if (localObject != null) {
      ((e)localObject).c(getWidth() / 2, paramMotionEvent.getY());
    }
    postInvalidate();
    label175:
    return true;
  }
  
  public void setSectionAlphabets(String[] paramArrayOfString)
  {
    this.j = ((String[])Arrays.copyOf(paramArrayOfString, paramArrayOfString.length));
  }
  
  class a
    implements ValueAnimator.AnimatorUpdateListener
  {
    a() {}
    
    public void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      AlphabetFastIndexer.c(AlphabetFastIndexer.this).c(AlphabetFastIndexer.this.getWidth() / 2.0F, ((Float)paramValueAnimator.getAnimatedValue()).floatValue());
      AlphabetFastIndexer.this.postInvalidate();
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      AlphabetFastIndexer.d(AlphabetFastIndexer.this);
    }
  }
  
  class c
    extends Handler
  {
    c() {}
    
    public void handleMessage(Message paramMessage)
    {
      if ((paramMessage.what == 1) && (AlphabetFastIndexer.e(AlphabetFastIndexer.this) != null)) {
        AlphabetFastIndexer.e(AlphabetFastIndexer.this).setVisibility(8);
      }
    }
  }
  
  public static class d
    implements AbsListView.OnScrollListener
  {
    private final AbsListView.OnScrollListener a;
    private final WeakReference<AlphabetFastIndexer> b;
    private String c = "";
    
    public d(AlphabetFastIndexer paramAlphabetFastIndexer, AbsListView.OnScrollListener paramOnScrollListener)
    {
      this.b = new WeakReference(paramAlphabetFastIndexer);
      this.a = paramOnScrollListener;
    }
    
    protected String a(Object paramObject)
    {
      throw null;
    }
    
    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
    {
      Object localObject = (AlphabetFastIndexer)this.b.get();
      if (localObject != null)
      {
        AlphabetFastIndexer.d((AlphabetFastIndexer)localObject);
        String str = a(((ListAdapter)paramAbsListView.getAdapter()).getItem(paramInt1));
        if (TextUtils.isEmpty(str))
        {
          str = str.substring(0, 1).toUpperCase();
          if (!TextUtils.equals(str, this.c))
          {
            ((AlphabetFastIndexer)localObject).i(str);
            this.c = str;
          }
        }
      }
      localObject = this.a;
      if (localObject != null) {
        ((AbsListView.OnScrollListener)localObject).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      }
    }
    
    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      Object localObject = (AlphabetFastIndexer)this.b.get();
      if (localObject != null) {
        AlphabetFastIndexer.g((AlphabetFastIndexer)localObject, paramInt);
      }
      localObject = this.a;
      if (localObject != null) {
        ((AbsListView.OnScrollListener)localObject).onScrollStateChanged(paramAbsListView, paramInt);
      }
    }
  }
  
  private class e
  {
    BitmapDrawable a;
    Paint b = new Paint();
    Bitmap c;
    Canvas d;
    ValueAnimator e;
    Rect f = new Rect();
    Rect g;
    Rect h = new Rect();
    Xfermode i;
    Xfermode j;
    int k;
    int l;
    int m;
    
    e(Context paramContext, TypedArray paramTypedArray)
    {
      this.k = paramTypedArray.getColor(i.m0, 0);
      this.l = paramTypedArray.getColor(i.l0, 0);
      this.m = paramTypedArray.getColor(i.o0, 0);
      this.a = ((BitmapDrawable)paramTypedArray.getDrawable(i.n0));
      this.b.setTextSize(paramTypedArray.getDimension(i.p0, 0.0F));
      this.b.setAntiAlias(true);
      this.b.setTextAlign(Paint.Align.CENTER);
      this.b.setTypeface(Typeface.DEFAULT_BOLD);
      this.c = this.a.getBitmap().copy(Bitmap.Config.ARGB_8888, true);
      this.d = new Canvas(this.c);
      this.g = new Rect();
      this.i = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
      this.j = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
      c(0.0F, 0.0F);
    }
    
    void a(Canvas paramCanvas, boolean paramBoolean, int paramInt, float paramFloat1, float paramFloat2)
    {
      Paint localPaint = this.b;
      String str;
      if (TextUtils.equals(AlphabetFastIndexer.f(AlphabetFastIndexer.this)[paramInt], "!")) {
        str = "★";
      } else {
        str = AlphabetFastIndexer.f(AlphabetFastIndexer.this)[paramInt];
      }
      localPaint.getTextBounds(str, 0, str.length(), this.h);
      this.h.width();
      this.h.height();
      if (this.f.contains((int)paramFloat1, (int)paramFloat2)) {
        localPaint.setColor(this.m);
      } else {
        localPaint.setColor(this.k);
      }
      Rect localRect = this.h;
      paramCanvas.drawText(str, paramFloat1, paramFloat2 - (localRect.top + localRect.bottom) / 2.0F, localPaint);
    }
    
    void b(float paramFloat, ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
    {
      Object localObject = this.e;
      if (localObject != null) {
        ((ValueAnimator)localObject).cancel();
      }
      localObject = this.f;
      float f1;
      if (localObject == null) {
        f1 = paramFloat;
      } else {
        f1 = (((Rect)localObject).top + ((Rect)localObject).bottom) / 2.0F;
      }
      localObject = ValueAnimator.ofFloat(new float[] { f1, paramFloat });
      this.e = ((ValueAnimator)localObject);
      ((ValueAnimator)localObject).addUpdateListener(paramAnimatorUpdateListener);
      this.e.setDuration(200L);
      this.e.start();
    }
    
    void c(float paramFloat1, float paramFloat2)
    {
      float f1 = this.a.getIntrinsicWidth() / 2.0F;
      float f2 = AlphabetFastIndexer.this.getHeight() / AlphabetFastIndexer.f(AlphabetFastIndexer.this).length;
      Rect localRect = this.f;
      f1 /= 2.0F;
      int i1 = (int)(paramFloat1 - f1 - 1.0F);
      f2 /= 2.0F;
      localRect.set(i1, (int)(paramFloat2 - f2 - 1.0F), (int)(paramFloat1 + f1 + 1.0F), (int)(paramFloat2 + f2 + 1.0F));
      localRect = this.f;
      i1 = localRect.top;
      if (i1 < 0) {
        localRect.offset(0, -i1);
      }
      if (this.f.bottom > AlphabetFastIndexer.this.getHeight()) {
        this.f.offset(0, AlphabetFastIndexer.this.getHeight() - this.f.bottom);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.AlphabetFastIndexer
 * JD-Core Version:    0.7.0.1
 */