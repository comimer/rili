package com.android.ex.chips;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.DialogFragment;
import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.text.TextWatcher;
import android.text.method.QwertyKeyListener;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.DragEvent;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.DragShadowBuilder;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityRecord;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AutoCompleteTextView;
import android.widget.AutoCompleteTextView.Validator;
import android.widget.EditText;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.MultiAutoCompleteTextView.Tokenizer;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import j2.a;
import j2.c;
import j2.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class RecipientEditTextView
  extends MultiAutoCompleteTextView
  implements AdapterView.OnItemClickListener, ActionMode.Callback, q.a, GestureDetector.OnGestureListener, TextView.OnEditorActionListener, DropdownChipLayouter.d, DropdownChipLayouter.e
{
  private static final String s0;
  private static final int t0 = 1671672458;
  private View D = this;
  private ListPopupWindow E;
  private ListPopupWindow F;
  private View G;
  private AdapterView.OnItemClickListener H;
  private a I;
  private Bitmap J;
  private Bitmap K;
  private c L;
  private TextView M;
  private int N;
  final ArrayList<String> O = new ArrayList();
  private int P = 0;
  private int Q;
  private boolean R = false;
  private boolean S = true;
  private boolean T = false;
  ArrayList<a> U;
  private ArrayList<a> V;
  private GestureDetector W;
  private int a;
  private ScrollView a0;
  private int b;
  private boolean b0;
  private final Rect c = new Rect();
  private boolean c0 = false;
  private final int[] d = new int[2];
  private boolean d0;
  private Drawable e = null;
  private ScreenOrientation e0 = ScreenOrientation.PORTRAIT;
  private Drawable f = null;
  private boolean f0 = false;
  private Drawable g;
  private final Runnable g0 = new e();
  private float h;
  private o h0;
  private float i;
  private Runnable i0 = new f();
  private float j;
  private Runnable j0 = new g();
  private int k;
  private u k0;
  private int l;
  private r l0;
  private final int m;
  private s m0;
  private boolean n;
  private Set<String> n0 = new HashSet();
  private int o;
  private String o0 = "";
  private int p;
  private String p0 = "";
  private int q;
  private String q0 = "";
  private Paint r = new Paint();
  private q r0;
  private MultiAutoCompleteTextView.Tokenizer v;
  private AutoCompleteTextView.Validator w;
  private Handler x;
  private TextWatcher y;
  protected DropdownChipLayouter z;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(String.valueOf(','));
    localStringBuilder.append(String.valueOf(' '));
    s0 = localStringBuilder.toString();
  }
  
  public RecipientEditTextView(final Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    l1(paramContext, paramAttributeSet);
    this.m = V();
    paramAttributeSet = new ListPopupWindow(paramContext);
    this.E = paramAttributeSet;
    setupPopupWindow(paramAttributeSet);
    paramAttributeSet = new ListPopupWindow(paramContext);
    this.F = paramAttributeSet;
    setupPopupWindow(paramAttributeSet);
    this.H = new h();
    setInputType(getInputType() | 0x80000);
    setOnItemClickListener(this);
    setCustomSelectionActionModeCallback(this);
    this.x = new i(Looper.getMainLooper());
    paramAttributeSet = new w(null);
    this.y = paramAttributeSet;
    addTextChangedListener(paramAttributeSet);
    post(new j(paramContext));
    setOnEditorActionListener(this);
    setDropdownChipLayouter(new DropdownChipLayouter(LayoutInflater.from(paramContext), paramContext));
  }
  
  private static int A0(Editable paramEditable, int paramInt)
  {
    if (paramEditable.charAt(paramInt) != ' ') {
      return paramInt;
    }
    return -1;
  }
  
  private boolean B0()
  {
    View localView = focusSearch(130);
    if (localView != null)
    {
      localView.requestFocus();
      return true;
    }
    return false;
  }
  
  private int D0(a parama)
  {
    return getSpannable().getSpanEnd(parama);
  }
  
  private int E0(a parama)
  {
    return getSpannable().getSpanStart(parama);
  }
  
  private int F0(r paramr)
  {
    int i1;
    if (paramr.x()) {
      i1 = this.b;
    } else {
      i1 = getResources().getColor(i.b);
    }
    return i1;
  }
  
  private int G0(r paramr)
  {
    int i1;
    if (paramr.x()) {
      i1 = this.a;
    } else {
      i1 = getResources().getColor(17170444);
    }
    return i1;
  }
  
  private void J0(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != -1) && (paramInt2 != -1))
    {
      Editable localEditable = getText();
      setSelection(paramInt2);
      Object localObject = getText().toString().substring(paramInt1, paramInt2);
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localObject = r.a((String)localObject, T0((String)localObject));
        QwertyKeyListener.markAsReplaced(localEditable, paramInt1, paramInt2, "");
        localObject = h0((r)localObject);
        paramInt2 = getSelectionEnd();
        if ((localObject != null) && (paramInt1 > -1) && (paramInt2 > -1)) {
          localEditable.replace(paramInt1, paramInt2, (CharSequence)localObject);
        }
      }
      dismissDropDown();
      return;
    }
    dismissDropDown();
  }
  
  private void L0()
  {
    ArrayList localArrayList = K0();
    if ((localArrayList != null) && (localArrayList.size() > 0)) {
      new o(null).execute(new ArrayList[] { localArrayList });
    }
  }
  
  private boolean P0(int paramInt)
  {
    boolean bool;
    if (getAdapter().z(paramInt).n() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean R(int paramInt1, int paramInt2)
  {
    boolean bool1 = this.R;
    boolean bool2 = true;
    if (bool1) {
      return true;
    }
    a[] arrayOfa = (a[])getSpannable().getSpans(paramInt1, paramInt2, a.class);
    if ((arrayOfa == null) || (arrayOfa.length <= 0)) {
      bool2 = false;
    }
    return bool2;
  }
  
  @TargetApi(16)
  private void S(String paramString)
  {
    if (((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled())
    {
      ViewParent localViewParent = getParent();
      if (localViewParent != null)
      {
        AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(16384);
        onInitializeAccessibilityEvent(localAccessibilityEvent);
        localAccessibilityEvent.getText().add(paramString);
        localAccessibilityEvent.setContentDescription(null);
        localViewParent.requestSendAccessibilityEvent(this, localAccessibilityEvent);
      }
    }
  }
  
  private boolean S0()
  {
    return ((AccessibilityManager)getContext().getSystemService("accessibility")).isTouchExplorationEnabled();
  }
  
  private float T()
  {
    return getWidth() - getPaddingLeft() - getPaddingRight() - this.k - this.l;
  }
  
  private boolean T0(String paramString)
  {
    AutoCompleteTextView.Validator localValidator = this.w;
    boolean bool;
    if (localValidator == null) {
      bool = true;
    } else {
      bool = localValidator.isValid(paramString);
    }
    return bool;
  }
  
  private int U(int paramInt)
  {
    return -(int)((this.h + this.j * 2.0F) * Math.abs(getLineCount() - paramInt) + getPaddingBottom());
  }
  
  private boolean U0(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      AutoCompleteTextView.Validator localValidator = this.w;
      if ((localValidator != null) && (localValidator.isValid(paramString))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  private int V()
  {
    Object localObject = getPaint();
    this.c.setEmpty();
    ((Paint)localObject).getTextBounds("a", 0, 1, this.c);
    localObject = this.c;
    ((Rect)localObject).left = 0;
    ((Rect)localObject).right = 0;
    return ((Rect)localObject).height();
  }
  
  private void W()
  {
    a[] arrayOfa = getSortedRecipients();
    if (arrayOfa != null)
    {
      int i1 = arrayOfa.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        a locala = arrayOfa[i2];
        Rect localRect = locala.getBounds();
        if ((getWidth() > 0) && (localRect.right - localRect.left > getWidth() - getPaddingLeft() - getPaddingRight())) {
          g1(locala, locala.h());
        }
      }
    }
  }
  
  private void W0(final r paramr, final n paramn)
  {
    long l1 = paramr.g();
    boolean bool = R0();
    int i1 = 1;
    if (bool ? l1 != -1L : (l1 == -1L) || (l1 == -2L)) {
      i1 = 0;
    }
    if (i1 != 0)
    {
      byte[] arrayOfByte = paramr.s();
      if (arrayOfByte == null) {
        getAdapter().u(paramr, new m(paramr, paramn));
      } else {
        u0(paramn, BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
      }
    }
  }
  
  private boolean X()
  {
    if (this.P <= 0)
    {
      ArrayList localArrayList = this.V;
      if ((localArrayList == null) || (localArrayList.size() <= 0)) {
        return false;
      }
    }
    boolean bool = true;
    return bool;
  }
  
  private void Z()
  {
    if (this.v == null) {
      return;
    }
    Editable localEditable = getText();
    int i1 = getSelectionEnd();
    int i2 = this.v.findTokenStart(localEditable, i1);
    if (n1(i2, i1)) {
      a0(i2, i1, localEditable);
    }
    setSelection(getText().length());
  }
  
  private boolean a0(int paramInt1, int paramInt2, Editable paramEditable)
  {
    int i1 = a1();
    if ((i1 != -1) && (enoughToFilter()) && (paramInt2 == getSelectionEnd()) && (!R0()) && (!U0(paramEditable.toString().substring(paramInt1, paramInt2).trim())))
    {
      paramInt1 = getListSelection();
      if ((paramInt1 != -1) && (P0(paramInt1))) {
        w1(paramInt1);
      } else {
        w1(i1);
      }
      dismissDropDown();
      return true;
    }
    int i2 = this.v.findTokenEnd(paramEditable, paramInt1);
    int i3 = paramEditable.length();
    int i4 = i2 + 1;
    i1 = i2;
    if (i3 > i4)
    {
      i3 = paramEditable.charAt(i4);
      if (i3 != 44)
      {
        i1 = i2;
        if (i3 != 59) {}
      }
      else
      {
        i1 = i4;
      }
    }
    Object localObject = paramEditable.toString().substring(paramInt1, i1).trim();
    clearComposingText();
    if ((((String)localObject).length() > 0) && (!((String)localObject).equals(" ")))
    {
      localObject = q0((String)localObject);
      if (localObject != null)
      {
        QwertyKeyListener.markAsReplaced(paramEditable, paramInt1, paramInt2, "");
        localObject = h0((r)localObject);
        if ((localObject != null) && (paramInt1 > -1) && (paramInt2 > -1)) {
          paramEditable.replace(paramInt1, paramInt2, (CharSequence)localObject);
        }
      }
      if (paramInt2 == getSelectionEnd()) {
        dismissDropDown();
      }
      h1();
      return true;
    }
    return false;
  }
  
  private int a1()
  {
    b localb = getAdapter();
    int i1 = 0;
    int i2;
    if (localb != null) {
      i2 = localb.getCount();
    } else {
      i2 = 0;
    }
    while (i1 < i2)
    {
      if (P0(i1)) {
        return i1;
      }
      i1++;
    }
    return -1;
  }
  
  private boolean b0()
  {
    if (this.v == null) {
      return false;
    }
    Editable localEditable = getText();
    int i1 = getSelectionEnd();
    int i2 = this.v.findTokenStart(localEditable, i1);
    if (n1(i2, i1))
    {
      int i3 = X0(this.v.findTokenEnd(getText(), i2));
      if (i3 != getSelectionEnd())
      {
        J0(i2, i3);
        return true;
      }
      return a0(i2, i1, localEditable);
    }
    return false;
  }
  
  private void b1()
  {
    this.x.removeCallbacks(this.i0);
    this.x.post(this.i0);
  }
  
  private a c0(r paramr)
  {
    TextPaint localTextPaint = getPaint();
    float f1 = localTextPaint.getTextSize();
    int i1 = localTextPaint.getColor();
    Object localObject = i0(paramr, localTextPaint);
    Rect localRect = new Rect(0, 0, 0, 0);
    if (this.n0.contains(paramr.i())) {
      w0((n)localObject).round(localRect);
    }
    localObject = ((n)localObject).a;
    int i2;
    if (localObject != null) {
      i2 = ((Bitmap)localObject).getWidth();
    } else {
      i2 = 0;
    }
    int i3;
    if (localObject != null) {
      i3 = ((Bitmap)localObject).getHeight();
    } else {
      i3 = 0;
    }
    localObject = new BitmapDrawable(getResources(), (Bitmap)localObject);
    ((Drawable)localObject).setBounds(0, 0, i2, i3);
    paramr = new e((Drawable)localObject, paramr);
    paramr.j(this.j);
    localTextPaint.setTextSize(f1);
    localTextPaint.setColor(i1);
    paramr.l(localRect);
    return paramr;
  }
  
  private int c1(float paramFloat1, float paramFloat2)
  {
    return d1(getOffsetForPosition(paramFloat1, paramFloat2));
  }
  
  private StateListDrawable d0()
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    if (!this.n)
    {
      Drawable localDrawable = this.f;
      localStateListDrawable.addState(new int[] { 16843518 }, localDrawable);
    }
    localStateListDrawable.addState(new int[0], null);
    return localStateListDrawable;
  }
  
  private int d1(int paramInt)
  {
    Editable localEditable = getText();
    int i1 = localEditable.length();
    for (int i2 = i1 - 1; (i2 >= 0) && (localEditable.charAt(i2) == ' '); i2--) {
      i1--;
    }
    if (paramInt >= i1) {
      return paramInt;
    }
    localEditable = getText();
    while ((paramInt >= 0) && (A0(localEditable, paramInt) == -1) && (z0(paramInt) == null)) {
      paramInt--;
    }
    return paramInt;
  }
  
  private CharSequence h0(r paramr)
  {
    Object localObject = f0(paramr);
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return null;
    }
    int i1 = ((String)localObject).length();
    SpannableString localSpannableString = new SpannableString((CharSequence)localObject);
    if (!this.R) {
      try
      {
        localObject = c0(paramr);
        localSpannableString.setSpan(localObject, 0, i1 - 1, 33);
        ((a)localObject).b(localSpannableString.toString());
      }
      catch (NullPointerException paramr)
      {
        Log.e("RecipientEditTextView", paramr.getMessage(), paramr);
        return null;
      }
    }
    Y0(paramr);
    return localSpannableString;
  }
  
  private n i0(r paramr, TextPaint paramTextPaint)
  {
    paramTextPaint.setColor(G0(paramr));
    paramTextPaint = j0(paramr, paramTextPaint, C0(paramr), F0(paramr));
    if (paramTextPaint.b) {
      W0(paramr, paramTextPaint);
    }
    return paramTextPaint;
  }
  
  private n j0(r paramr, TextPaint paramTextPaint, Drawable paramDrawable, int paramInt)
  {
    n localn = new n(null);
    Drawable localDrawable;
    int i1;
    if (paramr.o() != 0)
    {
      localDrawable = getContext().getResources().getDrawable(paramr.o());
      localDrawable.setBounds(0, 0, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
      i1 = localDrawable.getBounds().width() + this.l;
    }
    else
    {
      localDrawable = null;
      i1 = 0;
    }
    Rect localRect = new Rect();
    if (paramDrawable != null) {
      paramDrawable.getPadding(localRect);
    }
    int i2 = (int)this.h;
    boolean bool1;
    if ((paramr.x()) && (paramr.B())) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    int i3;
    if (bool1) {
      i3 = i2 - localRect.top - localRect.bottom;
    } else {
      i3 = 0;
    }
    boolean bool2 = this.n0.contains(paramr.i());
    float f1;
    if (bool2) {
      f1 = this.p;
    } else {
      f1 = 0.0F;
    }
    float f2 = (this.h - this.p) / 2.0F;
    float f3;
    if (bool2) {
      f3 = this.l;
    } else {
      f3 = 0.0F;
    }
    Object localObject = new float[1];
    paramTextPaint.getTextWidths(" ", (float[])localObject);
    localObject = x0(k0(paramr), paramTextPaint, T() - i3 - f1 - f3 - localObject[0] - localRect.left - localRect.right - i1);
    int i4 = (int)paramTextPaint.measureText((CharSequence)localObject, 0, ((CharSequence)localObject).length());
    if (bool1) {
      i5 = this.k;
    } else {
      i5 = this.l;
    }
    int i6 = this.l;
    int i7 = (int)f1;
    int i8 = (int)f3;
    int i5 = Math.max(i3 * 2, i5 + i4 + i6 + i3 + i7 + i8 + localRect.left + localRect.right + i1);
    localn.a = Bitmap.createBitmap(i5, i2, Bitmap.Config.ARGB_8888);
    paramr = new Canvas(localn.a);
    if (paramDrawable != null)
    {
      paramDrawable.setBounds(0, 0, i5, i2);
      paramDrawable.draw(paramr);
    }
    else
    {
      this.r.reset();
      this.r.setColor(paramInt);
      float f4 = i2 / 2;
      paramr.drawRoundRect(new RectF(0.0F, 0.0F, i5, i2), f4, f4, this.r);
    }
    if (o1()) {
      paramInt = this.l + localRect.left + i1 + i7 + i8;
    } else {
      paramInt = i5 - localRect.right - this.l - i4 - i1 - i7 - i8;
    }
    paramr.drawText((CharSequence)localObject, 0, ((CharSequence)localObject).length(), paramInt, I0(i2), paramTextPaint);
    if (localDrawable != null)
    {
      if (o1()) {
        paramInt = localRect.left + this.l;
      } else {
        paramInt = i5 - localRect.right - localDrawable.getBounds().width() - this.l;
      }
      i1 = i2 / 2;
      i4 = localDrawable.getBounds().height() / 2;
      localDrawable.getBounds().offsetTo(paramInt, i1 - i4);
      localDrawable.draw(paramr);
    }
    if (o1()) {
      paramInt = i5 - localRect.right - i3;
    } else {
      paramInt = localRect.left;
    }
    localn.c = paramInt;
    localn.d = localRect.top;
    localn.e = (paramInt + i3);
    localn.f = (i2 - localRect.bottom);
    localn.b = bool1;
    if (o1()) {
      f3 = localRect.left + f3;
    } else {
      f3 = i5 - localRect.right - f1 - f3;
    }
    localn.g = f3;
    localn.h = f2;
    localn.i = (f3 + f1);
    localn.j = (f2 + this.p);
    return localn;
  }
  
  private void k1(a parama)
  {
    boolean bool = p1(parama);
    int i1 = 1;
    int i3;
    if (bool)
    {
      CharSequence localCharSequence = parama.getValue();
      Editable localEditable = getText();
      Object localObject = getSpannable();
      int i2 = ((Spanned)localObject).getSpanStart(parama);
      i1 = ((Spanned)localObject).getSpanEnd(parama);
      ((Spannable)localObject).removeSpan(parama);
      i3 = i1;
      if (i1 - i2 == localEditable.length() - 1) {
        i3 = i1 + 1;
      }
      localEditable.delete(i2, i3);
      setCursorVisible(true);
      setSelection(localEditable.length());
      localEditable.append(localCharSequence);
      this.I = c0(r.a((String)localCharSequence, T0(localCharSequence.toString())));
      if (!this.R)
      {
        localObject = this.m0;
        if (localObject != null) {
          ((s)localObject).a(parama.h());
        }
      }
    }
    else
    {
      i3 = i1;
      if (parama.c() != -2L) {
        if (getAdapter().v()) {
          i3 = i1;
        } else {
          i3 = 0;
        }
      }
      if ((i3 != 0) && (this.R)) {
        return;
      }
      if (S0()) {
        return;
      }
      this.I = parama;
      setSelection(getText().getSpanEnd(this.I));
      setCursorVisible(false);
      if (i3 != 0) {
        q1(parama, this.F);
      } else {
        r1(parama, this.E);
      }
    }
  }
  
  private void l1(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, p.h, 0, 0);
    paramAttributeSet = getContext().getResources();
    this.e = paramContext.getDrawable(p.j);
    this.g = paramContext.getDrawable(p.p);
    Drawable localDrawable = paramContext.getDrawable(p.k);
    this.f = localDrawable;
    if (localDrawable == null) {
      this.f = paramAttributeSet.getDrawable(k.a);
    }
    int i1 = paramContext.getDimensionPixelSize(p.n, -1);
    this.l = i1;
    this.k = i1;
    if (i1 == -1)
    {
      i1 = (int)paramAttributeSet.getDimension(j.b);
      this.l = i1;
      this.k = i1;
    }
    i1 = (int)paramAttributeSet.getDimension(j.d);
    if (i1 >= 0) {
      this.k = i1;
    }
    i1 = (int)paramAttributeSet.getDimension(j.c);
    if (i1 >= 0) {
      this.l = i1;
    }
    this.J = BitmapFactory.decodeResource(paramAttributeSet, k.b);
    this.M = ((TextView)LayoutInflater.from(getContext()).inflate(n.c, null));
    float f1 = paramContext.getDimensionPixelSize(p.m, -1);
    this.h = f1;
    if (f1 == -1.0F) {
      this.h = paramAttributeSet.getDimension(j.a);
    }
    f1 = paramContext.getDimensionPixelSize(p.l, -1);
    this.i = f1;
    if (f1 == -1.0F) {
      this.i = paramAttributeSet.getDimension(j.e);
    }
    this.q = paramContext.getInt(p.i, 1);
    this.n = paramContext.getBoolean(p.o, false);
    this.o = paramAttributeSet.getInteger(m.a);
    this.j = paramAttributeSet.getDimensionPixelOffset(j.g);
    this.a = paramContext.getColor(p.r, paramAttributeSet.getColor(17170444));
    this.b = paramContext.getColor(p.q, paramAttributeSet.getColor(i.a));
    paramContext.recycle();
  }
  
  private void m1(Bitmap paramBitmap, RectF paramRectF1, RectF paramRectF2)
  {
    Matrix localMatrix = new Matrix();
    Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
    paramBitmap = new BitmapShader(paramBitmap, localTileMode, localTileMode);
    localMatrix.reset();
    localMatrix.setRectToRect(paramRectF1, paramRectF2, Matrix.ScaleToFit.FILL);
    paramBitmap.setLocalMatrix(localMatrix);
    this.r.reset();
    this.r.setShader(paramBitmap);
    this.r.setAntiAlias(true);
    this.r.setFilterBitmap(true);
    this.r.setDither(true);
  }
  
  private p n0(int paramInt)
  {
    String str = String.format(this.M.getText().toString(), new Object[] { Integer.valueOf(paramInt) });
    this.r.set(getPaint());
    this.r.setTextSize(this.M.getTextSize());
    this.r.setColor(this.M.getCurrentTextColor());
    int i1 = (int)this.r.measureText(str) + this.M.getPaddingLeft() + this.M.getPaddingRight();
    int i2 = (int)this.h;
    Object localObject = Bitmap.createBitmap(i1, i2, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas((Bitmap)localObject);
    Layout localLayout = getLayout();
    if (localLayout != null) {
      paramInt = i2 - localLayout.getLineDescent(0);
    } else {
      paramInt = i2;
    }
    localCanvas.drawText(str, 0, str.length(), 0.0F, paramInt, this.r);
    localObject = new BitmapDrawable(getResources(), (Bitmap)localObject);
    ((Drawable)localObject).setBounds(0, 0, i1, i2);
    return new p((Drawable)localObject);
  }
  
  private boolean n1(int paramInt1, int paramInt2)
  {
    boolean bool;
    if ((!this.R) && (hasFocus()) && (enoughToFilter()) && (!R(paramInt1, paramInt2))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean o1()
  {
    int i1 = getLayoutDirection();
    boolean bool1 = false;
    if (i1 == 1) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    boolean bool2;
    if (this.q == 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    if (i1 != 0)
    {
      if (!bool2) {
        bool1 = true;
      }
    }
    else {
      bool1 = bool2;
    }
    return bool1;
  }
  
  private ListAdapter p0(a parama)
  {
    return new s(getContext(), parama.h(), this.z, d0());
  }
  
  private boolean p1(a parama)
  {
    long l1 = parama.c();
    boolean bool;
    if ((l1 != -1L) && ((R0()) || (l1 != -2L))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void q1(final a parama, final ListPopupWindow paramListPopupWindow)
  {
    if (!this.d0) {
      return;
    }
    int i1 = U(getLayout().getLineForOffset(E0(parama)));
    Object localObject = this.G;
    if (localObject == null) {
      localObject = this;
    }
    paramListPopupWindow.setAnchorView((View)localObject);
    paramListPopupWindow.setVerticalOffset(i1);
    paramListPopupWindow.setAdapter(p0(parama));
    paramListPopupWindow.setOnItemClickListener(new d(parama, paramListPopupWindow));
    paramListPopupWindow.show();
    parama = paramListPopupWindow.getListView();
    parama.setChoiceMode(1);
    parama.setItemChecked(0, true);
  }
  
  private r r0(r paramr)
  {
    if (paramr == null) {
      return null;
    }
    String str = paramr.i();
    r localr;
    if ((!R0()) && (paramr.g() == -2L))
    {
      localr = r.c(paramr.m(), str, paramr.x());
    }
    else
    {
      localr = paramr;
      if (r.u(paramr.g())) {
        if ((!TextUtils.isEmpty(paramr.m())) && (!TextUtils.equals(paramr.m(), str)))
        {
          AutoCompleteTextView.Validator localValidator = this.w;
          localr = paramr;
          if (localValidator != null)
          {
            localr = paramr;
            if (localValidator.isValid(str)) {}
          }
        }
        else
        {
          localr = r.a(str, paramr.x());
        }
      }
    }
    return localr;
  }
  
  private void r1(final a parama, final ListPopupWindow paramListPopupWindow)
  {
    new b(parama, paramListPopupWindow).execute(null);
  }
  
  private void s0()
  {
    ListPopupWindow localListPopupWindow = this.E;
    if ((localListPopupWindow != null) && (localListPopupWindow.isShowing())) {
      this.E.dismiss();
    }
    localListPopupWindow = this.F;
    if ((localListPopupWindow != null) && (localListPopupWindow.isShowing())) {
      this.F.dismiss();
    }
    setSelection(getText().length());
  }
  
  private void s1(String paramString)
  {
    Context localContext = getContext();
    if ((this.d0) && (localContext != null) && ((localContext instanceof Activity))) {
      d.a(paramString).show(((Activity)localContext).getFragmentManager(), "chips-copy-dialog");
    }
  }
  
  private void setWorkPaintForBorder(float paramFloat)
  {
    this.r.reset();
    this.r.setColor(0);
    this.r.setStyle(Paint.Style.STROKE);
    this.r.setStrokeWidth(paramFloat);
    this.r.setAntiAlias(true);
  }
  
  private void setupPopupWindow(ListPopupWindow paramListPopupWindow)
  {
    paramListPopupWindow.setOnDismissListener(new k());
  }
  
  private void t1(String paramString)
  {
    this.q0 = paramString;
    new AlertDialog.Builder(getContext()).setTitle(this.p0).setOnDismissListener(new a()).setMessage(this.q0).show();
  }
  
  private void u0(n paramn, Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return;
    }
    t0(paramBitmap, new Canvas(paramn.a), new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight()), new RectF(paramn.c, paramn.d, paramn.e, paramn.f));
  }
  
  private void u1()
  {
    if (this.v == null) {
      return;
    }
    Object localObject1 = this.I;
    long l1;
    if (localObject1 != null) {
      l1 = ((a)localObject1).h().g();
    } else {
      l1 = -1L;
    }
    if ((this.I != null) && (l1 != -1L) && (!R0()) && (l1 != -2L))
    {
      Y();
    }
    else
    {
      if (getWidth() <= 0)
      {
        this.x.removeCallbacks(this.j0);
        if (getVisibility() == 8) {
          this.T = true;
        } else {
          this.x.post(this.j0);
        }
        return;
      }
      if (this.P > 0)
      {
        b1();
      }
      else
      {
        localObject1 = getText();
        int i1 = getSelectionEnd();
        int i2 = this.v.findTokenStart((CharSequence)localObject1, i1);
        Object localObject2 = (a[])getSpannable().getSpans(i2, i1, a.class);
        if ((localObject2 == null) || (localObject2.length == 0))
        {
          localObject2 = getText();
          int i3 = this.v.findTokenEnd((CharSequence)localObject2, i2);
          int i4 = i3;
          if (i3 < ((CharSequence)localObject2).length())
          {
            i4 = i3;
            if (((CharSequence)localObject2).charAt(i3) == ',') {
              i4 = X0(i3);
            }
          }
          if (i4 != getSelectionEnd()) {
            J0(i2, i4);
          } else {
            a0(i2, i1, (Editable)localObject1);
          }
        }
      }
      this.x.post(this.g0);
    }
    l0();
  }
  
  private void v0(Bitmap paramBitmap, Canvas paramCanvas, RectF paramRectF1, RectF paramRectF2)
  {
    m1(paramBitmap, paramRectF1, paramRectF2);
    paramCanvas.drawRect(paramRectF2, this.r);
    setWorkPaintForBorder(1.0F);
    paramCanvas.drawRect(paramRectF2, this.r);
    this.r.reset();
  }
  
  private void v1(a parama)
  {
    String str = parama.h().i();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append(',');
    startDrag(ClipData.newPlainText(str, localStringBuilder.toString()), new t(parama), null, 0);
    e1(parama);
  }
  
  private RectF w0(n paramn)
  {
    if (this.K == null) {
      return new RectF(0.0F, 0.0F, 0.0F, 0.0F);
    }
    Canvas localCanvas = new Canvas(paramn.a);
    RectF localRectF = new RectF(0.0F, 0.0F, this.K.getWidth(), this.K.getHeight());
    paramn = new RectF(paramn.g, paramn.h, paramn.i, paramn.j);
    v0(this.K, localCanvas, localRectF, paramn);
    return paramn;
  }
  
  private int w1(int paramInt)
  {
    Object localObject = r0(getAdapter().z(paramInt));
    if (localObject == null) {
      return -1;
    }
    clearComposingText();
    paramInt = getSelectionEnd();
    int i1 = this.v.findTokenStart(getText(), paramInt);
    Editable localEditable = getText();
    QwertyKeyListener.markAsReplaced(localEditable, i1, paramInt, "");
    localObject = h0((r)localObject);
    if ((localObject != null) && (i1 >= 0) && (paramInt >= 0)) {
      localEditable.replace(i1, paramInt, (CharSequence)localObject);
    }
    h1();
    return paramInt - i1;
  }
  
  private CharSequence x0(CharSequence paramCharSequence, TextPaint paramTextPaint, float paramFloat)
  {
    paramTextPaint.setTextSize(this.i);
    if ((paramFloat <= 0.0F) && (Log.isLoggable("RecipientEditTextView", 3)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Max width is negative: ");
      localStringBuilder.append(paramFloat);
      Log.d("RecipientEditTextView", localStringBuilder.toString());
    }
    return TextUtils.ellipsize(paramCharSequence, paramTextPaint, paramFloat, TextUtils.TruncateAt.END);
  }
  
  private static String x1(String paramString)
  {
    Rfc822Token[] arrayOfRfc822Token = Rfc822Tokenizer.tokenize(paramString);
    String str = paramString;
    if (arrayOfRfc822Token != null)
    {
      str = paramString;
      if (arrayOfRfc822Token.length > 0) {
        str = arrayOfRfc822Token[0].getAddress();
      }
    }
    return str;
  }
  
  private void y0()
  {
    if (this.S) {
      setMaxLines(2147483647);
    }
    f1();
    setCursorVisible(true);
    Object localObject = getText();
    int i1;
    if ((localObject != null) && (((CharSequence)localObject).length() > 0)) {
      i1 = ((CharSequence)localObject).length();
    } else {
      i1 = 0;
    }
    setSelection(i1);
    localObject = this.U;
    if ((localObject != null) && (((ArrayList)localObject).size() > 0))
    {
      new v(null).execute(new Void[0]);
      this.U = null;
    }
  }
  
  private boolean y1(float paramFloat1, float paramFloat2, a parama)
  {
    if (parama != null)
    {
      Rect localRect = parama.d();
      if (localRect != null)
      {
        int i1;
        if (o1()) {
          i1 = D0(parama);
        } else {
          i1 = E0(parama);
        }
        float f1 = getLayout().getPrimaryHorizontal(i1);
        float f2 = getLayout().getLineTop(getLayout().getLineForOffset(i1)) + getTotalPaddingTop();
        bool = new RectF(localRect.left + f1, localRect.top + f2, f1 + localRect.right, f2 + localRect.bottom).contains(paramFloat1, paramFloat2);
        break label132;
      }
    }
    boolean bool = false;
    label132:
    return bool;
  }
  
  private a z0(int paramInt)
  {
    Spannable localSpannable = getSpannable();
    int i1 = localSpannable.length();
    int i2 = 0;
    a[] arrayOfa = (a[])localSpannable.getSpans(0, i1, a.class);
    i1 = arrayOfa.length;
    while (i2 < i1)
    {
      localSpannable = arrayOfa[i2];
      int i3 = E0(localSpannable);
      int i4 = D0(localSpannable);
      if ((paramInt >= i3) && (paramInt <= i4)) {
        return localSpannable;
      }
      i2++;
    }
    return null;
  }
  
  private void z1(a parama)
  {
    int i1 = E0(parama);
    int i2 = D0(parama);
    Editable localEditable = getText();
    this.I = null;
    if ((i1 != -1) && (i2 != -1))
    {
      getSpannable().removeSpan(parama);
      QwertyKeyListener.markAsReplaced(localEditable, i1, i2, "");
      localEditable.removeSpan(parama);
      try
      {
        if (this.R) {
          break label137;
        }
        localEditable.setSpan(c0(parama.h()), i1, i2, 33);
      }
      catch (NullPointerException parama)
      {
        Log.e("RecipientEditTextView", parama.getMessage(), parama);
      }
    }
    else
    {
      Log.w("RecipientEditTextView", "The chip doesn't exist or may be a chip a user was editing");
      setSelection(localEditable.length());
      b0();
    }
    label137:
    setCursorVisible(true);
    setSelection(localEditable.length());
    parama = this.E;
    if ((parama != null) && (parama.isShowing())) {
      this.E.dismiss();
    }
  }
  
  Drawable C0(r paramr)
  {
    if (paramr.x()) {
      paramr = this.e;
    } else {
      paramr = this.g;
    }
    return paramr;
  }
  
  public String H0(int paramInt)
  {
    return getResources().getString(o.b);
  }
  
  protected float I0(int paramInt)
  {
    return paramInt - (paramInt - this.m) / 2;
  }
  
  ArrayList<a> K0()
  {
    String str1 = getText().toString();
    int i1 = this.v.findTokenStart(str1, getSelectionEnd());
    String str2 = str1.substring(i1);
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    int i3;
    if (i1 != 0)
    {
      localObject1 = null;
      int i2 = 0;
      int i4;
      int i5;
      Object localObject2;
      for (i3 = i1;; i3 = i5)
      {
        i4 = i3;
        i5 = i2;
        localObject2 = localObject1;
        if (i3 == 0) {
          break;
        }
        i4 = i3;
        i5 = i2;
        localObject2 = localObject1;
        if (localObject1 != null) {
          break;
        }
        i4 = i3;
        i5 = i2;
        localObject2 = localObject1;
        if (i3 == i2) {
          break;
        }
        i5 = this.v.findTokenStart(str1, i3);
        localObject1 = z0(i5);
        if ((i5 == i1) && (localObject1 == null))
        {
          i4 = i5;
          i5 = i3;
          localObject2 = localObject1;
          break;
        }
        i2 = i3;
      }
      if (i4 != i1)
      {
        if (localObject2 != null) {
          i4 = i5;
        }
        while (i4 < i1)
        {
          a0(i4, X0(this.v.findTokenEnd(getText().toString(), i4)), getText());
          localObject1 = z0(i4);
          if (localObject1 == null) {
            break;
          }
          i4 = getSpannable().getSpanEnd(localObject1) + 1;
          localArrayList.add(localObject1);
        }
      }
    }
    if (O0(str2))
    {
      localObject1 = getText();
      i3 = localObject1.toString().indexOf(str2, i1);
      a0(i3, ((CharSequence)localObject1).length(), (Editable)localObject1);
      localArrayList.add(z0(i3));
    }
    return localArrayList;
  }
  
  void M0(ClipData paramClipData)
  {
    if (paramClipData == null) {
      return;
    }
    ClipDescription localClipDescription = paramClipData.getDescription();
    if ((!localClipDescription.hasMimeType("text/plain")) && (!localClipDescription.hasMimeType("text/html"))) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if (i1 == 0) {
      return;
    }
    removeTextChangedListener(this.y);
    localClipDescription = paramClipData.getDescription();
    for (int i1 = 0; i1 < paramClipData.getItemCount(); i1++)
    {
      Object localObject = localClipDescription.getMimeType(i1);
      int i2;
      if ((!"text/plain".equals(localObject)) && (!"text/html".equals(localObject))) {
        i2 = 0;
      } else {
        i2 = 1;
      }
      if (i2 != 0)
      {
        localObject = paramClipData.getItemAt(i1).getText();
        if (!TextUtils.isEmpty((CharSequence)localObject))
        {
          Editable localEditable = getText();
          i2 = getSelectionStart();
          int i3 = getSelectionEnd();
          if ((i2 >= 0) && (i3 >= 1))
          {
            if (i2 == i3) {
              localEditable.insert(i2, (CharSequence)localObject);
            } else {
              localEditable.append((CharSequence)localObject, i2, i3);
            }
          }
          else {
            localEditable.append((CharSequence)localObject);
          }
          L0();
        }
      }
    }
    this.x.post(this.g0);
  }
  
  void N0()
  {
    if (getViewWidth() <= 0) {
      return;
    }
    if (this.P <= 0) {
      return;
    }
    synchronized (this.O)
    {
      Object localObject1 = getText();
      if (this.P <= 50)
      {
        for (int i1 = 0; i1 < this.O.size(); i1++)
        {
          localObject2 = (String)this.O.get(i1);
          int i2 = localObject1.toString().indexOf((String)localObject2);
          int i3 = ((String)localObject2).length() + i2 - 1;
          if (i2 >= 0)
          {
            int i4 = i3;
            if (i3 < ((CharSequence)localObject1).length() - 2)
            {
              i4 = i3;
              if (((CharSequence)localObject1).charAt(i3) == ',') {
                i4 = i3 + 1;
              }
            }
            boolean bool;
            if ((i1 >= 2) && (this.S)) {
              bool = false;
            } else {
              bool = true;
            }
            o0(i2, i4, (Editable)localObject1, bool);
          }
          this.P -= 1;
        }
        i1();
      }
      else
      {
        this.R = true;
      }
      Object localObject2 = this.U;
      if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0) && (this.U.size() <= 50))
      {
        if ((!hasFocus()) && (this.U.size() >= 2))
        {
          localObject2 = new com/android/ex/chips/RecipientEditTextView$o;
          ((o)localObject2).<init>(this, null);
          this.h0 = ((o)localObject2);
          localObject1 = new java/util/ArrayList;
          ((ArrayList)localObject1).<init>(this.U.subList(0, 2));
          ((AsyncTask)localObject2).execute(new ArrayList[] { localObject1 });
          if (this.U.size() > 2)
          {
            localObject2 = new java/util/ArrayList;
            localObject1 = this.U;
            ((ArrayList)localObject2).<init>(((ArrayList)localObject1).subList(2, ((ArrayList)localObject1).size()));
            this.U = ((ArrayList)localObject2);
          }
          else
          {
            this.U = null;
          }
          l0();
        }
        else
        {
          localObject2 = new com/android/ex/chips/RecipientEditTextView$v;
          ((v)localObject2).<init>(this, null);
          ((AsyncTask)localObject2).execute(new Void[0]);
          this.U = null;
        }
      }
      else
      {
        this.U = null;
        l0();
      }
      this.P = 0;
      this.O.clear();
      return;
    }
  }
  
  boolean O0(CharSequence paramCharSequence)
  {
    boolean bool1 = TextUtils.isEmpty(paramCharSequence);
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    int i1 = paramCharSequence.length();
    int i2 = this.v.findTokenStart(paramCharSequence, i1);
    paramCharSequence = paramCharSequence.toString().substring(i2, i1).trim();
    bool1 = bool2;
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      i2 = paramCharSequence.charAt(paramCharSequence.length() - 1);
      if (i2 != 44)
      {
        bool1 = bool2;
        if (i2 != 59) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean Q0(a parama)
  {
    long l1 = parama.c();
    boolean bool;
    if ((l1 != -1L) && ((R0()) || (l1 != -2L))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  protected boolean R0()
  {
    b localb = getAdapter();
    boolean bool = true;
    if ((localb == null) || (getAdapter().D() != 1)) {
      bool = false;
    }
    return bool;
  }
  
  public boolean V0(CharSequence paramCharSequence)
  {
    int i1 = getSelectionEnd();
    boolean bool = false;
    if (i1 == 0) {
      i1 = 0;
    } else {
      i1 = getSelectionEnd() - 1;
    }
    int i2 = length() - 1;
    if (i1 != i2) {
      i1 = paramCharSequence.charAt(i1);
    } else {
      i1 = paramCharSequence.charAt(i2);
    }
    if ((i1 == 44) || (i1 == 59)) {
      bool = true;
    }
    return bool;
  }
  
  int X0(int paramInt)
  {
    if (paramInt >= length()) {
      return paramInt;
    }
    int i1 = getText().toString().charAt(paramInt);
    int i2;
    if (i1 != 44)
    {
      i2 = paramInt;
      if (i1 != 59) {}
    }
    else
    {
      i2 = paramInt + 1;
    }
    paramInt = i2;
    if (i2 < length())
    {
      paramInt = i2;
      if (getText().toString().charAt(i2) == ' ') {
        paramInt = i2 + 1;
      }
    }
    return paramInt;
  }
  
  public void Y()
  {
    a locala = this.I;
    if (locala != null)
    {
      z1(locala);
      this.I = null;
    }
    setCursorVisible(true);
    setSelection(getText().length());
  }
  
  protected void Y0(r paramr)
  {
    if (!this.R)
    {
      r localr = this.l0;
      if (localr != null) {
        localr.a(paramr);
      }
    }
  }
  
  public void Z0(a parama)
  {
    if (parama.a()) {
      Y();
    }
  }
  
  public void a()
  {
    q localq = this.r0;
    if (localq != null) {
      localq.a();
    }
    dismissDropDown();
  }
  
  public void append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    Object localObject = this.y;
    if (localObject != null) {
      removeTextChangedListener((TextWatcher)localObject);
    }
    super.append(paramCharSequence, paramInt1, paramInt2);
    if ((!TextUtils.isEmpty(paramCharSequence)) && (TextUtils.getTrimmedLength(paramCharSequence) > 0))
    {
      localObject = paramCharSequence.toString();
      paramCharSequence = (CharSequence)localObject;
      if (!((String)localObject).trim().endsWith(String.valueOf(',')))
      {
        paramCharSequence = s0;
        super.append(paramCharSequence, 0, paramCharSequence.length());
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append((String)localObject);
        localStringBuilder.append(paramCharSequence);
        paramCharSequence = localStringBuilder.toString();
      }
      if ((!TextUtils.isEmpty(paramCharSequence)) && (TextUtils.getTrimmedLength(paramCharSequence) > 0))
      {
        this.P += 1;
        this.O.add(paramCharSequence);
      }
    }
    if (this.P > 0) {
      b1();
    }
    this.x.post(this.g0);
  }
  
  public void b(int paramInt)
  {
    ListView localListView = this.E.getListView();
    if ((localListView != null) && (localListView.getCheckedItemCount() == 0)) {
      localListView.setItemChecked(paramInt, true);
    }
    this.Q = paramInt;
  }
  
  public void c()
  {
    a locala = this.I;
    if (locala != null)
    {
      if (!this.R)
      {
        s locals = this.m0;
        if (locals != null) {
          locals.a(locala.h());
        }
      }
      e1(this.I);
    }
    s0();
  }
  
  int e0(Editable paramEditable)
  {
    int i1 = 0;
    int i2 = 0;
    int i3;
    int i4;
    do
    {
      i3 = i2;
      if (i1 >= paramEditable.length()) {
        break;
      }
      i4 = X0(this.v.findTokenEnd(paramEditable, i1));
      i3 = i2 + 1;
      i1 = i4;
      i2 = i3;
    } while (i4 < paramEditable.length());
    return i3;
  }
  
  void e1(a parama)
  {
    Spannable localSpannable = getSpannable();
    int i1 = localSpannable.getSpanStart(parama);
    int i2 = localSpannable.getSpanEnd(parama);
    Editable localEditable = getText();
    int i3;
    if (parama == this.I) {
      i3 = 1;
    } else {
      i3 = 0;
    }
    int i4 = i2;
    if (i3 != 0) {
      this.I = null;
    }
    for (i4 = i2; (i4 >= 0) && (i4 < localEditable.length()) && (localEditable.charAt(i4) == ' '); i4++) {}
    localSpannable.removeSpan(parama);
    if ((i1 >= 0) && (i4 > 0)) {
      localEditable.delete(i1, i4);
    }
    if (i3 != 0) {
      Y();
    }
  }
  
  String f0(r paramr)
  {
    Object localObject = paramr.m();
    String str = paramr.i();
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      paramr = (r)localObject;
      if (!TextUtils.equals((CharSequence)localObject, str)) {}
    }
    else
    {
      paramr = null;
    }
    if ((R0()) && (f.a(str)))
    {
      paramr = str.trim();
    }
    else
    {
      localObject = str;
      if (str != null)
      {
        Rfc822Token[] arrayOfRfc822Token = Rfc822Tokenizer.tokenize(str);
        localObject = str;
        if (arrayOfRfc822Token != null)
        {
          localObject = str;
          if (arrayOfRfc822Token.length > 0) {
            localObject = arrayOfRfc822Token[0].getAddress();
          }
        }
      }
      paramr = new Rfc822Token(paramr, (String)localObject, null).toString().trim();
    }
    int i1 = paramr.indexOf(",");
    localObject = paramr;
    if (this.v != null)
    {
      localObject = paramr;
      if (!TextUtils.isEmpty(paramr))
      {
        localObject = paramr;
        if (i1 < paramr.length() - 1) {
          localObject = (String)this.v.terminateToken(paramr);
        }
      }
    }
    return localObject;
  }
  
  void f1()
  {
    if (this.L != null)
    {
      Object localObject1 = getSpannable();
      ((Spannable)localObject1).removeSpan(this.L);
      this.L = null;
      Object localObject2 = this.V;
      if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
      {
        localObject2 = getSortedRecipients();
        if ((localObject2 != null) && (localObject2.length != 0))
        {
          int i1 = ((Spanned)localObject1).getSpanEnd(localObject2[(localObject2.length - 1)]);
          Editable localEditable = getText();
          Iterator localIterator = this.V.iterator();
          while (localIterator.hasNext())
          {
            localObject1 = (a)localIterator.next();
            localObject2 = (String)((a)localObject1).e();
            int i2 = localEditable.toString().indexOf((String)localObject2, i1);
            i1 = Math.min(localEditable.length(), ((String)localObject2).length() + i2);
            if (i2 != -1) {
              localEditable.setSpan(localObject1, i2, i1, 33);
            }
          }
          this.V.clear();
        }
      }
    }
  }
  
  protected ListAdapter g0(a parama)
  {
    return new q(getContext(), parama.c(), parama.i(), parama.f(), parama.g(), getAdapter().D(), this, this.z, d0(), getAdapter().C());
  }
  
  void g1(a parama, r paramr)
  {
    int i1;
    if (parama == this.I) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0) {
      this.I = null;
    }
    int i2 = E0(parama);
    int i3 = D0(parama);
    getSpannable().removeSpan(parama);
    parama = getText();
    paramr.z(true);
    paramr = h0(paramr);
    if (paramr != null) {
      if ((i2 != -1) && (i3 != -1))
      {
        if (!TextUtils.isEmpty(paramr))
        {
          while ((i3 >= 0) && (i3 < parama.length()) && (parama.charAt(i3) == ' ')) {
            i3++;
          }
          parama.replace(i2, i3, paramr);
        }
      }
      else
      {
        Log.e("RecipientEditTextView", "The chip to replace does not exist but should.");
        parama.insert(0, paramr);
      }
    }
    setCursorVisible(true);
    if (i1 != 0) {
      Y();
    }
  }
  
  public b getAdapter()
  {
    return (b)super.getAdapter();
  }
  
  public List<r> getAllRecipients()
  {
    List localList = getSelectedRecipients();
    Object localObject = this.V;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localList.add(((a)((Iterator)localObject).next()).h());
      }
    }
    return localList;
  }
  
  public float getChipHeight()
  {
    return this.h;
  }
  
  a getLastChip()
  {
    Object localObject = getSortedRecipients();
    if ((localObject != null) && (localObject.length > 0)) {
      localObject = localObject[(localObject.length - 1)];
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  c getMoreChip()
  {
    Object localObject = (p[])getSpannable().getSpans(0, getText().length(), p.class);
    if ((localObject != null) && (localObject.length > 0)) {
      localObject = localObject[0];
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public ScreenOrientation getOrientation()
  {
    return this.e0;
  }
  
  protected ScrollView getScrollView()
  {
    return this.a0;
  }
  
  public List<r> getSelectedRecipients()
  {
    Object localObject = getText();
    int i1 = getText().length();
    int i2 = 0;
    a[] arrayOfa = (a[])((Spanned)localObject).getSpans(0, i1, a.class);
    localObject = new ArrayList();
    if (arrayOfa == null) {
      return localObject;
    }
    i1 = arrayOfa.length;
    while (i2 < i1)
    {
      ((List)localObject).add(arrayOfa[i2].h());
      i2++;
    }
    return localObject;
  }
  
  a[] getSortedRecipients()
  {
    ArrayList localArrayList = new ArrayList(Arrays.asList((a[])getSpannable().getSpans(0, getText().length(), a.class)));
    Collections.sort(localArrayList, new c(getSpannable()));
    return (a[])localArrayList.toArray(new a[localArrayList.size()]);
  }
  
  Spannable getSpannable()
  {
    return getText();
  }
  
  int getViewWidth()
  {
    return getWidth();
  }
  
  void h1()
  {
    if (this.P > 0) {
      return;
    }
    a[] arrayOfa = getSortedRecipients();
    if ((arrayOfa != null) && (arrayOfa.length > 0))
    {
      a locala = arrayOfa[(arrayOfa.length - 1)];
      Object localObject = null;
      if (arrayOfa.length > 1) {
        localObject = arrayOfa[(arrayOfa.length - 2)];
      }
      int i1 = 0;
      int i2 = getSpannable().getSpanStart(locala);
      if (localObject != null)
      {
        int i3 = getSpannable().getSpanEnd(localObject);
        localObject = getText();
        if ((i3 != -1) && (i3 <= ((CharSequence)localObject).length() - 1))
        {
          i1 = i3;
          if (((CharSequence)localObject).charAt(i3) == ' ') {
            i1 = i3 + 1;
          }
        }
        else
        {
          return;
        }
      }
      if ((i1 >= 0) && (i2 >= 0) && (i1 < i2)) {
        getText().delete(i1, i2);
      }
    }
  }
  
  void i1()
  {
    if (this.P > 0) {
      return;
    }
    Object localObject1 = getSortedRecipients();
    Object localObject2 = getSpannable();
    if ((localObject1 != null) && (localObject1.length > 0))
    {
      localObject1 = getMoreChip();
      this.L = ((c)localObject1);
      int i1;
      if (localObject1 != null) {
        i1 = ((Spanned)localObject2).getSpanEnd(localObject1);
      } else {
        i1 = getSpannable().getSpanEnd(getLastChip());
      }
      localObject2 = getText();
      int i2 = ((CharSequence)localObject2).length();
      if (i2 > i1)
      {
        if (Log.isLoggable("RecipientEditTextView", 3))
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("There were extra characters after the last tokenizable entry.");
          ((StringBuilder)localObject1).append(localObject2);
          Log.d("RecipientEditTextView", ((StringBuilder)localObject1).toString());
        }
        ((Editable)localObject2).delete(i1 + 1, i2);
      }
    }
  }
  
  protected void j1()
  {
    if ((this.a0 != null) && (this.S))
    {
      getLocationInWindow(this.d);
      int i1 = getHeight();
      int[] arrayOfInt = this.d;
      int i2 = arrayOfInt[1] + i1;
      this.a0.getLocationInWindow(arrayOfInt);
      i1 = this.d[1] + i1 / getLineCount();
      if (i2 > i1) {
        this.a0.scrollBy(0, i2 - i1);
      }
    }
  }
  
  String k0(r paramr)
  {
    String str1 = paramr.m();
    String str2 = paramr.i();
    if (!TextUtils.isEmpty(str1))
    {
      paramr = str1;
      if (!TextUtils.equals(str1, str2)) {}
    }
    else
    {
      paramr = null;
    }
    if (!TextUtils.isEmpty(paramr)) {
      return paramr;
    }
    if (!TextUtils.isEmpty(str2)) {
      return str2;
    }
    return new Rfc822Token(paramr, str2, null).toString();
  }
  
  void l0()
  {
    if (this.R)
    {
      m0();
      return;
    }
    if (!this.S) {
      return;
    }
    Object localObject1 = (c[])getSpannable().getSpans(0, getText().length(), p.class);
    if (localObject1.length > 0) {
      getSpannable().removeSpan(localObject1[0]);
    }
    a[] arrayOfa = getSortedRecipients();
    if ((arrayOfa != null) && (arrayOfa.length > 2))
    {
      Object localObject2 = getSpannable();
      int i1 = arrayOfa.length;
      int i2 = i1 - 2;
      p localp = n0(i2);
      this.V = new ArrayList();
      localObject1 = getText();
      int i3 = i1 - i2;
      i1 = i3;
      i2 = 0;
      int i4 = i2;
      while (i1 < arrayOfa.length)
      {
        this.V.add(arrayOfa[i1]);
        if (i1 == i3) {
          i4 = ((Spanned)localObject2).getSpanStart(arrayOfa[i1]);
        }
        if (i1 == arrayOfa.length - 1) {
          i2 = ((Spanned)localObject2).getSpanEnd(arrayOfa[i1]);
        }
        ArrayList localArrayList = this.U;
        if ((localArrayList == null) || (!localArrayList.contains(arrayOfa[i1])))
        {
          int i5 = ((Spanned)localObject2).getSpanStart(arrayOfa[i1]);
          int i6 = ((Spanned)localObject2).getSpanEnd(arrayOfa[i1]);
          arrayOfa[i1].b(localObject1.toString().substring(i5, i6));
        }
        ((Spannable)localObject2).removeSpan(arrayOfa[i1]);
        i1++;
      }
      i1 = i2;
      if (i2 < ((CharSequence)localObject1).length()) {
        i1 = ((CharSequence)localObject1).length();
      }
      i2 = Math.max(i4, i1);
      i1 = Math.min(i4, i1);
      localObject2 = new SpannableString(((CharSequence)localObject1).subSequence(i1, i2));
      ((SpannableString)localObject2).setSpan(localp, 0, ((SpannableString)localObject2).length(), 33);
      ((Editable)localObject1).replace(i1, i2, (CharSequence)localObject2);
      this.L = localp;
      if ((!R0()) && (getLineCount() > this.o)) {
        setMaxLines(getLineCount());
      }
      return;
    }
    this.L = null;
  }
  
  void m0()
  {
    Editable localEditable = getText();
    int i1 = 0;
    int i2 = i1;
    while (i1 < 2)
    {
      i2 = X0(this.v.findTokenEnd(localEditable, i2));
      i1++;
    }
    p localp = n0(e0(localEditable) - 2);
    SpannableString localSpannableString = new SpannableString(localEditable.subSequence(i2, localEditable.length()));
    localSpannableString.setSpan(localp, 0, localSpannableString.length(), 33);
    localEditable.replace(i2, localEditable.length(), localSpannableString);
    this.L = localp;
  }
  
  void o0(int paramInt1, int paramInt2, Editable paramEditable, boolean paramBoolean)
  {
    if (R(paramInt1, paramInt2)) {
      return;
    }
    Object localObject1 = paramEditable.toString().substring(paramInt1, paramInt2);
    String str = ((String)localObject1).trim();
    int i1 = str.lastIndexOf(',');
    Object localObject3 = localObject1;
    if (i1 != -1)
    {
      localObject3 = localObject1;
      if (i1 == str.length() - 1) {
        localObject3 = str.substring(0, str.length() - 1);
      }
    }
    r localr = q0((String)localObject3);
    if (localr != null)
    {
      str = null;
      localObject1 = str;
      Object localObject2;
      try
      {
        if (!this.R) {
          if (paramBoolean) {
            localObject1 = c0(localr);
          } else {
            localObject1 = new j2.b(localr);
          }
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        Log.e("RecipientEditTextView", localNullPointerException.getMessage(), localNullPointerException);
        localObject2 = str;
      }
      paramEditable.setSpan(localObject2, paramInt1, paramInt2, 33);
      if (localObject2 != null)
      {
        if (this.U == null) {
          this.U = new ArrayList();
        }
        localObject2.b((String)localObject3);
        this.U.add(localObject2);
      }
    }
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return false;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.d0 = true;
    int i1 = getDropDownAnchor();
    if (i1 != -1) {
      this.D = getRootView().findViewById(i1);
    }
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return false;
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    InputConnection localInputConnection = super.onCreateInputConnection(paramEditorInfo);
    int i1 = paramEditorInfo.imeOptions;
    int i2 = i1 & 0xFF;
    if ((i2 & 0x6) != 0) {
      paramEditorInfo.imeOptions = (i1 ^ i2 | 0x6);
    }
    i1 = paramEditorInfo.imeOptions;
    if ((0x40000000 & i1) != 0) {
      paramEditorInfo.imeOptions = (i1 & 0xBFFFFFFF);
    }
    paramEditorInfo.actionId = 6;
    paramEditorInfo.actionLabel = null;
    return localInputConnection;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode) {}
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.d0 = false;
  }
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean onDragEvent(DragEvent paramDragEvent)
  {
    int i1 = paramDragEvent.getAction();
    if (i1 != 1)
    {
      if (i1 != 3)
      {
        if (i1 != 5) {
          return false;
        }
        requestFocus();
        return true;
      }
      M0(paramDragEvent.getClipData());
      return true;
    }
    return paramDragEvent.getClipDescription().hasMimeType("text/plain");
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 6)
    {
      if (b0()) {
        return true;
      }
      if (this.I != null)
      {
        Y();
        return true;
      }
      if ((hasFocus()) && (B0())) {
        return true;
      }
    }
    return false;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if (!paramBoolean) {
      u1();
    } else {
      y0();
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < 0) {
      return;
    }
    paramView = getAdapter().z(paramInt);
    if (paramView.n() == 1)
    {
      paramAdapterView = this.r0;
      if (paramAdapterView != null) {
        paramAdapterView.b(this, paramView.r());
      }
      return;
    }
    int i1 = w1(paramInt);
    if (i1 > -1)
    {
      paramAdapterView = this.k0;
      if (paramAdapterView != null) {
        paramAdapterView.a(i1, paramInt);
      }
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.I != null) && (paramInt == 67))
    {
      localObject = this.E;
      if ((localObject != null) && (((ListPopupWindow)localObject).isShowing())) {
        this.E.dismiss();
      }
      e1(this.I);
    }
    if (((paramInt == 23) || (paramInt == 66)) && (paramKeyEvent.hasNoModifiers()))
    {
      if (b0()) {
        return true;
      }
      if (this.I != null)
      {
        Y();
        return true;
      }
      if (B0()) {
        return true;
      }
    }
    Object localObject = getLastChip();
    boolean bool = super.onKeyDown(paramInt, paramKeyEvent);
    if ((paramInt == 67) && (bool) && (localObject != null))
    {
      localObject = ((a)localObject).h();
      if (!this.R)
      {
        paramKeyEvent = this.m0;
        if ((paramKeyEvent != null) && (localObject != null)) {
          paramKeyEvent.a((r)localObject);
        }
      }
    }
    return bool;
  }
  
  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.I != null))
    {
      Y();
      return true;
    }
    return super.onKeyPreIme(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 61) && (paramKeyEvent.hasNoModifiers())) {
      if (this.I != null) {
        Y();
      } else {
        b0();
      }
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onLongPress(MotionEvent paramMotionEvent)
  {
    if (this.I != null) {
      return;
    }
    paramMotionEvent = z0(c1(paramMotionEvent.getX(), paramMotionEvent.getY()));
    if (paramMotionEvent != null) {
      if (this.c0) {
        v1(paramMotionEvent);
      } else {
        s1(paramMotionEvent.h().i());
      }
    }
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (Bundle)paramParcelable;
    if (!TextUtils.isEmpty(getText())) {
      super.onRestoreInstanceState(null);
    } else {
      super.onRestoreInstanceState(paramParcelable.getParcelable("savedTextView"));
    }
    paramParcelable = paramParcelable.getString("savedCurrentWarningText");
    if (!paramParcelable.isEmpty()) {
      t1(paramParcelable);
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    Y();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("savedTextView", super.onSaveInstanceState());
    localBundle.putString("savedCurrentWarningText", this.q0);
    return localBundle;
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onSelectionChanged(int paramInt1, int paramInt2)
  {
    if ((getOrientation() == ScreenOrientation.LANDSCAPE) && (getText().length() != 0) && (getText().length() == paramInt2 - paramInt1)) {
      this.f0 = true;
    }
    a locala = getLastChip();
    if ((this.I == null) && (locala != null) && (paramInt1 < getSpannable().getSpanEnd(locala))) {
      setSelection(Math.min(getSpannable().getSpanEnd(locala) + 1, getText().length()));
    }
    super.onSelectionChanged(paramInt1, paramInt2);
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != 0) && (paramInt2 != 0)) {
      if (this.P > 0) {
        b1();
      } else {
        W();
      }
    }
    if ((this.a0 == null) && (!this.b0))
    {
      for (ViewParent localViewParent = getParent(); (localViewParent != null) && (!(localViewParent instanceof ScrollView)); localViewParent = localViewParent.getParent()) {}
      if (localViewParent != null) {
        this.a0 = ((ScrollView)localViewParent);
      }
      this.b0 = true;
    }
  }
  
  public boolean onTextContextMenuItem(int paramInt)
  {
    if (paramInt == 16908322)
    {
      M0(((ClipboardManager)getContext().getSystemService("clipboard")).getPrimaryClip());
      return true;
    }
    return super.onTextContextMenuItem(paramInt);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    a locala = z0(c1(f1, f2));
    int i2 = 1;
    boolean bool1 = true;
    boolean bool3;
    if (i1 == 1)
    {
      boolean bool2 = y1(f1, f2, locala);
      if (bool2)
      {
        t1(String.format(this.o0, new Object[] { locala.h().i() }));
        return true;
      }
      if (!isFocused())
      {
        bool3 = bool1;
        if (!bool2) {
          if (super.onTouchEvent(paramMotionEvent)) {
            bool3 = bool1;
          } else {
            bool3 = false;
          }
        }
        return bool3;
      }
      bool3 = super.onTouchEvent(paramMotionEvent);
      if (this.I == null) {
        this.W.onTouchEvent(paramMotionEvent);
      }
      if (locala != null)
      {
        paramMotionEvent = this.I;
        if ((paramMotionEvent != null) && (paramMotionEvent != locala))
        {
          Y();
          k1(locala);
        }
        else if (paramMotionEvent == null)
        {
          b0();
          k1(locala);
        }
        else
        {
          Z0(paramMotionEvent);
        }
        bool3 = true;
      }
      else
      {
        paramMotionEvent = this.I;
        if ((paramMotionEvent == null) || (!p1(paramMotionEvent))) {
          i2 = 0;
        }
      }
      bool1 = bool3;
      if (i2 == 0)
      {
        Y();
        bool1 = bool3;
      }
    }
    else
    {
      if (y1(f1, f2, locala)) {
        return true;
      }
      bool3 = super.onTouchEvent(paramMotionEvent);
      if (!isFocused()) {
        return bool3;
      }
      bool1 = bool3;
      if (this.I == null)
      {
        this.W.onTouchEvent(paramMotionEvent);
        bool1 = bool3;
      }
    }
    return bool1;
  }
  
  public void performFiltering(CharSequence paramCharSequence, int paramInt)
  {
    boolean bool = O0(paramCharSequence);
    if ((enoughToFilter()) && (!bool))
    {
      int i1 = getSelectionEnd();
      int i2 = this.v.findTokenStart(paramCharSequence, i1);
      a[] arrayOfa = (a[])getSpannable().getSpans(i2, i1, a.class);
      if ((arrayOfa != null) && (arrayOfa.length > 0)) {
        dismissDropDown();
      }
    }
    else if (bool)
    {
      dismissDropDown();
      return;
    }
    super.performFiltering(paramCharSequence, paramInt);
  }
  
  public void performValidation() {}
  
  r q0(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    Rfc822Token[] arrayOfRfc822Token = null;
    if (bool1) {
      return null;
    }
    bool1 = R0();
    boolean bool2 = true;
    if ((bool1) && (f.a(paramString))) {
      return r.b(paramString, true);
    }
    Object localObject1 = Rfc822Tokenizer.tokenize(paramString);
    boolean bool3 = T0(paramString);
    if ((bool3) && (localObject1 != null) && (localObject1.length > 0))
    {
      localObject2 = localObject1[0].getName();
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        return r.c((String)localObject2, localObject1[0].getAddress(), bool3);
      }
      localObject2 = localObject1[0].getAddress();
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        return r.a((String)localObject2, bool3);
      }
    }
    localObject1 = this.w;
    Object localObject2 = arrayOfRfc822Token;
    bool1 = bool3;
    if (localObject1 != null)
    {
      localObject2 = arrayOfRfc822Token;
      bool1 = bool3;
      if (!bool3)
      {
        localObject2 = ((AutoCompleteTextView.Validator)localObject1).fixText(paramString).toString();
        if (!TextUtils.isEmpty((CharSequence)localObject2))
        {
          if (((String)localObject2).contains(paramString))
          {
            arrayOfRfc822Token = Rfc822Tokenizer.tokenize((CharSequence)localObject2);
            if (arrayOfRfc822Token.length > 0)
            {
              localObject2 = arrayOfRfc822Token[0].getAddress();
              bool1 = bool2;
            }
            else
            {
              bool1 = bool3;
            }
          }
          else
          {
            bool1 = false;
            localObject2 = arrayOfRfc822Token;
          }
        }
        else {
          bool1 = bool3;
        }
      }
    }
    if (!TextUtils.isEmpty((CharSequence)localObject2)) {
      paramString = (String)localObject2;
    }
    return r.a(paramString, bool1);
  }
  
  public void removeTextChangedListener(TextWatcher paramTextWatcher)
  {
    this.y = null;
    super.removeTextChangedListener(paramTextWatcher);
  }
  
  protected void replaceText(CharSequence paramCharSequence) {}
  
  public <T extends ListAdapter,  extends Filterable> void setAdapter(T paramT)
  {
    super.setAdapter(paramT);
    paramT = (b)paramT;
    paramT.G(new l());
    paramT.I(this.z);
  }
  
  public void setAlternatePopupAnchor(View paramView)
  {
    this.G = paramView;
  }
  
  void setChipBackground(Drawable paramDrawable)
  {
    this.e = paramDrawable;
  }
  
  void setChipHeight(int paramInt)
  {
    this.h = paramInt;
  }
  
  public void setDropDownAnchor(int paramInt)
  {
    super.setDropDownAnchor(paramInt);
    if (paramInt != -1) {
      this.D = getRootView().findViewById(paramInt);
    }
  }
  
  public void setDropdownChipLayouter(DropdownChipLayouter paramDropdownChipLayouter)
  {
    this.z = paramDropdownChipLayouter;
    paramDropdownChipLayouter.A(this);
    this.z.B(this);
  }
  
  void setMoreItem(TextView paramTextView)
  {
    this.M = paramTextView;
  }
  
  public void setOnFocusListShrinkRecipients(boolean paramBoolean)
  {
    this.S = paramBoolean;
  }
  
  public void setOrientation(ScreenOrientation paramScreenOrientation)
  {
    this.e0 = paramScreenOrientation;
  }
  
  public void setPermissionsRequestItemClickedListener(q paramq)
  {
    this.r0 = paramq;
  }
  
  public void setRecipientChipAddedListener(r paramr)
  {
    this.l0 = paramr;
  }
  
  public void setRecipientChipDeletedListener(s params)
  {
    this.m0 = params;
  }
  
  public void setRecipientEntryItemClickedListener(u paramu)
  {
    this.k0 = paramu;
  }
  
  public void setTokenizer(MultiAutoCompleteTextView.Tokenizer paramTokenizer)
  {
    this.v = paramTokenizer;
    super.setTokenizer(paramTokenizer);
  }
  
  public void setValidator(AutoCompleteTextView.Validator paramValidator)
  {
    this.w = paramValidator;
    super.setValidator(paramValidator);
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if ((paramInt != 8) && (this.T))
    {
      this.T = false;
      this.x.post(this.j0);
    }
  }
  
  protected void t0(Bitmap paramBitmap, Canvas paramCanvas, RectF paramRectF1, RectF paramRectF2)
  {
    m1(paramBitmap, paramRectF1, paramRectF2);
    paramCanvas.drawCircle(paramRectF2.centerX(), paramRectF2.centerY(), paramRectF2.width() / 2.0F, this.r);
    setWorkPaintForBorder(1.0F);
    paramCanvas.drawCircle(paramRectF2.centerX(), paramRectF2.centerY(), paramRectF2.width() / 2.0F - 0.5F, this.r);
    this.r.reset();
  }
  
  public static enum ScreenOrientation
  {
    static
    {
      ScreenOrientation localScreenOrientation1 = new ScreenOrientation("PORTRAIT", 0);
      PORTRAIT = localScreenOrientation1;
      ScreenOrientation localScreenOrientation2 = new ScreenOrientation("LANDSCAPE", 1);
      LANDSCAPE = localScreenOrientation2;
      $VALUES = new ScreenOrientation[] { localScreenOrientation1, localScreenOrientation2 };
    }
    
    private ScreenOrientation() {}
  }
  
  class a
    implements DialogInterface.OnDismissListener
  {
    a() {}
    
    public void onDismiss(DialogInterface paramDialogInterface)
    {
      RecipientEditTextView.k(RecipientEditTextView.this, "");
    }
  }
  
  class b
    extends AsyncTask<Void, Void, ListAdapter>
  {
    b(a parama, ListPopupWindow paramListPopupWindow) {}
    
    protected ListAdapter a(Void... paramVarArgs)
    {
      return RecipientEditTextView.this.g0(parama);
    }
    
    protected void b(ListAdapter paramListAdapter)
    {
      if (!RecipientEditTextView.l(RecipientEditTextView.this)) {
        return;
      }
      int i = RecipientEditTextView.this.getLayout().getLineForOffset(RecipientEditTextView.n(RecipientEditTextView.this, parama));
      i = RecipientEditTextView.o(RecipientEditTextView.this, i);
      ListPopupWindow localListPopupWindow = paramListPopupWindow;
      Object localObject;
      if (RecipientEditTextView.p(RecipientEditTextView.this) != null) {
        localObject = RecipientEditTextView.p(RecipientEditTextView.this);
      } else {
        localObject = RecipientEditTextView.this;
      }
      localListPopupWindow.setAnchorView((View)localObject);
      paramListPopupWindow.setVerticalOffset(i);
      paramListPopupWindow.setAdapter(paramListAdapter);
      paramListPopupWindow.setOnItemClickListener(RecipientEditTextView.q(RecipientEditTextView.this));
      RecipientEditTextView.s(RecipientEditTextView.this, -1);
      paramListPopupWindow.show();
      paramListAdapter = paramListPopupWindow.getListView();
      paramListAdapter.setChoiceMode(1);
      if (RecipientEditTextView.r(RecipientEditTextView.this) != -1)
      {
        paramListAdapter.setItemChecked(RecipientEditTextView.r(RecipientEditTextView.this), true);
        RecipientEditTextView.s(RecipientEditTextView.this, -1);
      }
    }
  }
  
  class c
    implements Comparator<a>
  {
    c(Spannable paramSpannable) {}
    
    public int a(a parama1, a parama2)
    {
      int i = this.a.getSpanStart(parama1);
      int j = this.a.getSpanStart(parama2);
      if (i < j) {
        return -1;
      }
      if (i > j) {
        return 1;
      }
      return 0;
    }
  }
  
  class d
    implements AdapterView.OnItemClickListener
  {
    d(a parama, ListPopupWindow paramListPopupWindow) {}
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      RecipientEditTextView.t(RecipientEditTextView.this, parama);
      paramListPopupWindow.dismiss();
    }
  }
  
  class e
    implements Runnable
  {
    e() {}
    
    public void run()
    {
      if (RecipientEditTextView.d(RecipientEditTextView.this) == null)
      {
        RecipientEditTextView localRecipientEditTextView = RecipientEditTextView.this;
        RecipientEditTextView.e(localRecipientEditTextView, new RecipientEditTextView.w(localRecipientEditTextView, null));
        localRecipientEditTextView = RecipientEditTextView.this;
        localRecipientEditTextView.addTextChangedListener(RecipientEditTextView.d(localRecipientEditTextView));
      }
    }
  }
  
  class f
    implements Runnable
  {
    f() {}
    
    public void run()
    {
      RecipientEditTextView.this.N0();
    }
  }
  
  class g
    implements Runnable
  {
    g() {}
    
    public void run()
    {
      RecipientEditTextView.m(RecipientEditTextView.this);
    }
  }
  
  class h
    implements AdapterView.OnItemClickListener
  {
    h() {}
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      RecipientEditTextView.y(RecipientEditTextView.this).setOnItemClickListener(null);
      paramView = RecipientEditTextView.this;
      paramView.g1(RecipientEditTextView.J(paramView), ((q)paramAdapterView.getAdapter()).h(paramInt));
      paramAdapterView = Message.obtain(RecipientEditTextView.L(RecipientEditTextView.this), RecipientEditTextView.M());
      paramAdapterView.obj = RecipientEditTextView.y(RecipientEditTextView.this);
      RecipientEditTextView.L(RecipientEditTextView.this).sendMessageDelayed(paramAdapterView, 300L);
      RecipientEditTextView.this.clearComposingText();
    }
  }
  
  class i
    extends Handler
  {
    i(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      if (paramMessage.what == RecipientEditTextView.M())
      {
        ((ListPopupWindow)paramMessage.obj).dismiss();
        return;
      }
      super.handleMessage(paramMessage);
    }
  }
  
  class j
    implements Runnable
  {
    j(Context paramContext) {}
    
    public void run()
    {
      RecipientEditTextView.N(RecipientEditTextView.this, new GestureDetector(paramContext, RecipientEditTextView.this));
    }
  }
  
  class k
    implements PopupWindow.OnDismissListener
  {
    k() {}
    
    public void onDismiss()
    {
      RecipientEditTextView.this.Y();
    }
  }
  
  class l
    implements b.h
  {
    l() {}
    
    public void a(List<r> paramList)
    {
      int i;
      if (paramList == null) {
        i = 0;
      } else {
        i = paramList.size();
      }
      RecipientEditTextView localRecipientEditTextView;
      if ((paramList != null) && (paramList.size() > 0))
      {
        RecipientEditTextView.this.j1();
        if (RecipientEditTextView.O(RecipientEditTextView.this) == 0)
        {
          localRecipientEditTextView = RecipientEditTextView.this;
          RecipientEditTextView.Q(localRecipientEditTextView, localRecipientEditTextView.H0(i));
        }
      }
      if (((paramList == null) || (paramList.size() == 0)) && (RecipientEditTextView.O(RecipientEditTextView.this) != 0) && (RecipientEditTextView.this.getText().length() > 0))
      {
        localRecipientEditTextView = RecipientEditTextView.this;
        RecipientEditTextView.Q(localRecipientEditTextView, localRecipientEditTextView.getResources().getString(o.a));
      }
      if ((paramList == null) || (paramList.size() != 1) || (((r)paramList.get(0)).n() != 1))
      {
        RecipientEditTextView.g(RecipientEditTextView.this).getLocationOnScreen(RecipientEditTextView.f(RecipientEditTextView.this));
        paramList = RecipientEditTextView.this;
        paramList.getWindowVisibleDisplayFrame(RecipientEditTextView.h(paramList));
      }
      RecipientEditTextView.P(RecipientEditTextView.this, i);
    }
  }
  
  class m
    implements g.a
  {
    m(r paramr, RecipientEditTextView.n paramn) {}
    
    private void d(Bitmap paramBitmap)
    {
      RecipientEditTextView.j(RecipientEditTextView.this, paramn, paramBitmap);
      if (Looper.myLooper() == Looper.getMainLooper()) {
        RecipientEditTextView.this.invalidate();
      } else {
        RecipientEditTextView.this.post(new a());
      }
    }
    
    public void a()
    {
      b();
    }
    
    public void b()
    {
      byte[] arrayOfByte = paramr.s();
      d(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
    }
    
    public void c()
    {
      d(RecipientEditTextView.i(RecipientEditTextView.this));
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        RecipientEditTextView.this.invalidate();
      }
    }
  }
  
  private static class n
  {
    Bitmap a;
    boolean b = true;
    float c;
    float d;
    float e;
    float f;
    float g;
    float h;
    float i;
    float j;
  }
  
  private class o
    extends AsyncTask<ArrayList<a>, Void, Void>
  {
    private o() {}
    
    protected Void a(ArrayList<a>... paramVarArgs)
    {
      final ArrayList<a> localArrayList = paramVarArgs[0];
      ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        paramVarArgs = (a)localIterator.next();
        if (paramVarArgs != null) {
          localArrayList1.add(RecipientEditTextView.this.f0(paramVarArgs.h()));
        }
      }
      RecipientEditTextView.this.getAdapter().B(localArrayList1, new a(localArrayList));
      return null;
    }
    
    class a
      implements q.b
    {
      a(ArrayList paramArrayList) {}
      
      public void a(Set<String> paramSet) {}
      
      public void b(Map<String, r> paramMap)
      {
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          final a locala = (a)localIterator.next();
          if ((r.u(locala.h().g())) && (RecipientEditTextView.this.getSpannable().getSpanStart(locala) != -1))
          {
            final r localr = RecipientEditTextView.I(RecipientEditTextView.this, (r)paramMap.get(RecipientEditTextView.H(locala.h().i()).toLowerCase()));
            if (localr != null) {
              RecipientEditTextView.L(RecipientEditTextView.this).post(new a(locala, localr));
            }
          }
        }
      }
      
      class a
        implements Runnable
      {
        a(a parama, r paramr) {}
        
        public void run()
        {
          RecipientEditTextView.this.g1(locala, localr);
        }
      }
    }
  }
  
  private class p
    extends c
  {
    public p(Drawable paramDrawable)
    {
      super();
      j(RecipientEditTextView.K(RecipientEditTextView.this));
    }
  }
  
  public static abstract interface q
  {
    public abstract void a();
    
    public abstract void b(RecipientEditTextView paramRecipientEditTextView, String[] paramArrayOfString);
  }
  
  public static abstract interface r
  {
    public abstract void a(r paramr);
  }
  
  public static abstract interface s
  {
    public abstract void a(r paramr);
  }
  
  private final class t
    extends View.DragShadowBuilder
  {
    private final a a;
    
    public t(a parama)
    {
      this.a = parama;
    }
    
    public void onDrawShadow(Canvas paramCanvas)
    {
      this.a.draw(paramCanvas);
    }
    
    public void onProvideShadowMetrics(Point paramPoint1, Point paramPoint2)
    {
      Rect localRect = this.a.getBounds();
      paramPoint1.set(localRect.width(), localRect.height());
      paramPoint2.set(localRect.centerX(), localRect.centerY());
    }
  }
  
  public static abstract interface u
  {
    public abstract void a(int paramInt1, int paramInt2);
  }
  
  private class v
    extends AsyncTask<Void, Void, Void>
  {
    private v() {}
    
    private a c(r paramr)
    {
      try
      {
        if (RecipientEditTextView.A(RecipientEditTextView.this)) {
          return null;
        }
        paramr = RecipientEditTextView.E(RecipientEditTextView.this, paramr);
        return paramr;
      }
      catch (NullPointerException paramr)
      {
        Log.e("RecipientEditTextView", paramr.getMessage(), paramr);
      }
      return null;
    }
    
    private void e(final List<a> paramList1, final List<a> paramList2)
    {
      if ((paramList2 != null) && (paramList2.size() > 0))
      {
        paramList1 = new b(paramList1, paramList2);
        if (Looper.myLooper() == Looper.getMainLooper()) {
          paramList1.run();
        } else {
          RecipientEditTextView.L(RecipientEditTextView.this).post(paramList1);
        }
      }
    }
    
    protected Void d(final Void... paramVarArgs)
    {
      if (RecipientEditTextView.G(RecipientEditTextView.this) != null) {
        RecipientEditTextView.G(RecipientEditTextView.this).cancel(true);
      }
      paramVarArgs = new ArrayList();
      Collections.addAll(paramVarArgs, RecipientEditTextView.this.getSortedRecipients());
      if (RecipientEditTextView.F(RecipientEditTextView.this) != null) {
        paramVarArgs.addAll(RecipientEditTextView.F(RecipientEditTextView.this));
      }
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramVarArgs.iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (locala != null) {
          localArrayList.add(RecipientEditTextView.this.f0(locala.h()));
        }
      }
      RecipientEditTextView.this.getAdapter().B(localArrayList, new a(paramVarArgs));
      return null;
    }
    
    protected void onPreExecute()
    {
      ArrayList localArrayList1 = new ArrayList();
      Collections.addAll(localArrayList1, RecipientEditTextView.this.getSortedRecipients());
      if (RecipientEditTextView.F(RecipientEditTextView.this) != null) {
        localArrayList1.addAll(RecipientEditTextView.F(RecipientEditTextView.this));
      }
      ArrayList localArrayList2 = new ArrayList(localArrayList1.size());
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if ((r.u(locala.h().g())) && (RecipientEditTextView.this.getSpannable().getSpanStart(locala) != -1)) {
          localArrayList2.add(c(locala.h()));
        } else {
          localArrayList2.add(null);
        }
      }
      e(localArrayList1, localArrayList2);
    }
    
    class a
      implements q.b
    {
      a(ArrayList paramArrayList) {}
      
      public void a(Set<String> paramSet)
      {
        ArrayList localArrayList = new ArrayList(paramSet.size());
        Iterator localIterator = paramVarArgs.iterator();
        while (localIterator.hasNext())
        {
          a locala = (a)localIterator.next();
          if ((locala != null) && (r.u(locala.h().g())) && (RecipientEditTextView.this.getSpannable().getSpanStart(locala) != -1))
          {
            if (paramSet.contains(locala.h().i())) {
              localArrayList.add(RecipientEditTextView.v.a(RecipientEditTextView.v.this, locala.h()));
            } else {
              localArrayList.add(null);
            }
          }
          else {
            localArrayList.add(null);
          }
        }
        RecipientEditTextView.v.b(RecipientEditTextView.v.this, paramVarArgs, localArrayList);
      }
      
      public void b(Map<String, r> paramMap)
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = paramVarArgs.iterator();
        while (localIterator.hasNext())
        {
          Object localObject = (a)localIterator.next();
          if ((localObject != null) && (r.u(((a)localObject).h().g())) && (RecipientEditTextView.this.getSpannable().getSpanStart(localObject) != -1)) {
            localObject = RecipientEditTextView.I(RecipientEditTextView.this, (r)paramMap.get(RecipientEditTextView.H(((a)localObject).h().i())));
          } else {
            localObject = null;
          }
          if (localObject != null) {
            localArrayList.add(RecipientEditTextView.v.a(RecipientEditTextView.v.this, (r)localObject));
          } else {
            localArrayList.add(null);
          }
        }
        RecipientEditTextView.v.b(RecipientEditTextView.v.this, paramVarArgs, localArrayList);
      }
    }
    
    class b
      implements Runnable
    {
      b(List paramList1, List paramList2) {}
      
      public void run()
      {
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(RecipientEditTextView.this.getText());
        Iterator localIterator = paramList1.iterator();
        for (int i = 0; localIterator.hasNext(); i++)
        {
          Object localObject = (a)localIterator.next();
          a locala = (a)paramList2.get(i);
          if (locala != null)
          {
            r localr1 = ((a)localObject).h();
            r localr2 = locala.h();
            int j;
            if (q.b(localr1, localr2) == localr2) {
              j = 1;
            } else {
              j = 0;
            }
            if (j != 0)
            {
              j = localSpannableStringBuilder.getSpanStart(localObject);
              if (j != -1)
              {
                int k = Math.min(localSpannableStringBuilder.getSpanEnd(localObject) + 1, localSpannableStringBuilder.length());
                localSpannableStringBuilder.removeSpan(localObject);
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append(RecipientEditTextView.this.f0(locala.h()).trim());
                ((StringBuilder)localObject).append(" ");
                localObject = new SpannableString(((StringBuilder)localObject).toString());
                ((SpannableString)localObject).setSpan(locala, 0, ((SpannableString)localObject).length() - 1, 33);
                localSpannableStringBuilder.replace(j, k, (CharSequence)localObject);
                locala.b(((SpannableString)localObject).toString());
                paramList2.set(i, null);
                paramList1.set(i, locala);
              }
            }
          }
        }
        RecipientEditTextView.this.setText(localSpannableStringBuilder);
      }
    }
  }
  
  private class w
    implements TextWatcher
  {
    private w() {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      boolean bool = TextUtils.isEmpty(paramEditable);
      int i = 0;
      int j = 0;
      Object localObject;
      if (bool)
      {
        localObject = RecipientEditTextView.this.getSpannable();
        paramEditable = (a[])((Spanned)localObject).getSpans(0, RecipientEditTextView.this.getText().length(), a.class);
        i = paramEditable.length;
        while (j < i)
        {
          ((Spannable)localObject).removeSpan(paramEditable[j]);
          j++;
        }
        if (RecipientEditTextView.u(RecipientEditTextView.this) != null) {
          ((Spannable)localObject).removeSpan(RecipientEditTextView.u(RecipientEditTextView.this));
        }
        RecipientEditTextView.this.Y();
        return;
      }
      if (RecipientEditTextView.v(RecipientEditTextView.this)) {
        return;
      }
      if (RecipientEditTextView.J(RecipientEditTextView.this) != null)
      {
        localObject = RecipientEditTextView.this;
        if (!((RecipientEditTextView)localObject).Q0(RecipientEditTextView.J((RecipientEditTextView)localObject)))
        {
          RecipientEditTextView.this.setCursorVisible(true);
          localObject = RecipientEditTextView.this;
          ((EditText)localObject).setSelection(((EditText)localObject).getText().length());
          RecipientEditTextView.this.Y();
        }
        else
        {
          return;
        }
      }
      if (paramEditable.length() > 1)
      {
        if (RecipientEditTextView.this.V0(paramEditable))
        {
          RecipientEditTextView.w(RecipientEditTextView.this);
          return;
        }
        if (RecipientEditTextView.this.getSelectionEnd() == 0) {
          j = i;
        } else {
          j = RecipientEditTextView.this.getSelectionEnd() - 1;
        }
        i = RecipientEditTextView.this.length() - 1;
        if (j != i) {
          j = paramEditable.charAt(j);
        } else {
          j = paramEditable.charAt(i);
        }
        if ((j == 32) && (!RecipientEditTextView.this.R0()))
        {
          paramEditable = RecipientEditTextView.this.getText().toString();
          j = RecipientEditTextView.x(RecipientEditTextView.this).findTokenStart(paramEditable, RecipientEditTextView.this.getSelectionEnd());
          paramEditable = paramEditable.substring(j, RecipientEditTextView.x(RecipientEditTextView.this).findTokenEnd(paramEditable, j));
          if (RecipientEditTextView.z(RecipientEditTextView.this, paramEditable)) {
            RecipientEditTextView.w(RecipientEditTextView.this);
          }
        }
      }
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      Object localObject1;
      if (paramInt2 - paramInt3 == 1)
      {
        paramInt1 = RecipientEditTextView.this.getSelectionStart();
        if (RecipientEditTextView.this.getOrientation() == RecipientEditTextView.ScreenOrientation.PORTRAIT)
        {
          paramCharSequence = (a[])RecipientEditTextView.this.getSpannable().getSpans(paramInt1, paramInt1, a.class);
          if (paramCharSequence.length > 0)
          {
            localObject1 = paramCharSequence[0];
            paramCharSequence = RecipientEditTextView.this.getText();
            paramInt3 = paramCharSequence.getSpanStart(localObject1);
            paramInt2 = paramCharSequence.getSpanEnd(localObject1) + 1;
            paramInt1 = paramInt2;
            if (paramInt2 > paramCharSequence.length()) {
              paramInt1 = paramCharSequence.length();
            }
            if ((!RecipientEditTextView.A(RecipientEditTextView.this)) && (RecipientEditTextView.B(RecipientEditTextView.this) != null)) {
              RecipientEditTextView.B(RecipientEditTextView.this).a(((a)localObject1).h());
            }
            paramCharSequence.removeSpan(localObject1);
            paramCharSequence.delete(paramInt3, paramInt1);
          }
        }
        else if (RecipientEditTextView.C(RecipientEditTextView.this))
        {
          localObject1 = (a[])RecipientEditTextView.this.getSpannable().getSpans(0, RecipientEditTextView.this.getText().length(), a.class);
          for (paramInt1 = 0; paramInt1 < localObject1.length; paramInt1++)
          {
            Object localObject2 = localObject1[paramInt1];
            paramCharSequence = RecipientEditTextView.this.getText();
            paramInt3 = paramCharSequence.getSpanStart(localObject2);
            int i = paramCharSequence.getSpanEnd(localObject2) + 1;
            paramInt2 = paramInt3;
            if (paramInt3 < 0) {
              paramInt2 = 0;
            }
            paramInt3 = i;
            if (i > paramCharSequence.length()) {
              paramInt3 = paramCharSequence.length();
            }
            if ((!RecipientEditTextView.A(RecipientEditTextView.this)) && (RecipientEditTextView.B(RecipientEditTextView.this) != null)) {
              RecipientEditTextView.B(RecipientEditTextView.this).a(localObject2.h());
            }
            paramCharSequence.removeSpan(localObject2);
            paramCharSequence.delete(paramInt2, paramInt3);
          }
          RecipientEditTextView.D(RecipientEditTextView.this, false);
        }
        else
        {
          paramCharSequence = (a[])RecipientEditTextView.this.getSpannable().getSpans(paramInt1, paramInt1, a.class);
          if (paramCharSequence.length > 0)
          {
            localObject1 = paramCharSequence[0];
            paramCharSequence = RecipientEditTextView.this.getText();
            paramInt3 = paramCharSequence.getSpanStart(localObject1);
            paramInt2 = paramCharSequence.getSpanEnd(localObject1) + 1;
            paramInt1 = paramInt2;
            if (paramInt2 > paramCharSequence.length()) {
              paramInt1 = paramCharSequence.length();
            }
            if ((!RecipientEditTextView.A(RecipientEditTextView.this)) && (RecipientEditTextView.B(RecipientEditTextView.this) != null)) {
              RecipientEditTextView.B(RecipientEditTextView.this).a(((a)localObject1).h());
            }
            paramCharSequence.removeSpan(localObject1);
            paramCharSequence.delete(paramInt3, paramInt1);
          }
        }
      }
      else if ((paramInt3 > paramInt2) && (RecipientEditTextView.J(RecipientEditTextView.this) != null))
      {
        localObject1 = RecipientEditTextView.this;
        if ((((RecipientEditTextView)localObject1).Q0(RecipientEditTextView.J((RecipientEditTextView)localObject1))) && (RecipientEditTextView.this.V0(paramCharSequence))) {
          RecipientEditTextView.w(RecipientEditTextView.this);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.RecipientEditTextView
 * JD-Core Version:    0.7.0.1
 */