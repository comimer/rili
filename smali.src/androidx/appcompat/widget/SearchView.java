package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import androidx.core.view.a0;
import androidx.customview.view.AbsSavedState;
import d.d;
import d.f;
import d.g;
import d.h;
import d.j;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView
  extends i0
  implements h.c
{
  static final n h0;
  View.OnFocusChangeListener D;
  private m E;
  private View.OnClickListener F;
  private boolean G;
  private boolean H;
  x.a I;
  private boolean J;
  private CharSequence K;
  private boolean L;
  private boolean M;
  private int N;
  private boolean O;
  private CharSequence P;
  private CharSequence Q;
  private boolean R;
  private int S;
  SearchableInfo T;
  private Bundle U;
  private final Runnable V = new b();
  private Runnable W = new c();
  final SearchAutoComplete a;
  private final WeakHashMap<String, Drawable.ConstantState> a0 = new WeakHashMap();
  private final View b;
  private final View.OnClickListener b0;
  private final View c;
  View.OnKeyListener c0;
  private final View d;
  private final TextView.OnEditorActionListener d0;
  final ImageView e;
  private final AdapterView.OnItemClickListener e0;
  final ImageView f;
  private final AdapterView.OnItemSelectedListener f0;
  final ImageView g;
  private TextWatcher g0;
  final ImageView h;
  private final View i;
  private o j;
  private Rect k = new Rect();
  private Rect l = new Rect();
  private int[] m = new int[2];
  private int[] n = new int[2];
  private final ImageView o;
  private final Drawable p;
  private final int q;
  private final int r;
  private final Intent v;
  private final Intent w;
  private final CharSequence x;
  private l y;
  private k z;
  
  static
  {
    n localn;
    if (Build.VERSION.SDK_INT < 29) {
      localn = new n();
    } else {
      localn = null;
    }
    h0 = localn;
  }
  
  public SearchView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.a.J);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    f localf = new f();
    this.b0 = localf;
    this.c0 = new g();
    h localh = new h();
    this.d0 = localh;
    i locali = new i();
    this.e0 = locali;
    j localj = new j();
    this.f0 = localj;
    this.g0 = new a();
    Object localObject = j.f2;
    z0 localz0 = z0.v(paramContext, paramAttributeSet, (int[])localObject, paramInt, 0);
    a0.j0(this, paramContext, (int[])localObject, paramAttributeSet, localz0.r(), paramInt, 0);
    LayoutInflater.from(paramContext).inflate(localz0.n(j.p2, g.r), this, true);
    paramContext = (SearchAutoComplete)findViewById(f.C);
    this.a = paramContext;
    paramContext.setSearchView(this);
    this.b = findViewById(f.y);
    View localView1 = findViewById(f.B);
    this.c = localView1;
    View localView2 = findViewById(f.I);
    this.d = localView2;
    paramAttributeSet = (ImageView)findViewById(f.w);
    this.e = paramAttributeSet;
    ImageView localImageView1 = (ImageView)findViewById(f.z);
    this.f = localImageView1;
    ImageView localImageView2 = (ImageView)findViewById(f.x);
    this.g = localImageView2;
    localObject = (ImageView)findViewById(f.D);
    this.h = ((ImageView)localObject);
    ImageView localImageView3 = (ImageView)findViewById(f.A);
    this.o = localImageView3;
    a0.p0(localView1, localz0.g(j.q2));
    a0.p0(localView2, localz0.g(j.u2));
    paramInt = j.t2;
    paramAttributeSet.setImageDrawable(localz0.g(paramInt));
    localImageView1.setImageDrawable(localz0.g(j.n2));
    localImageView2.setImageDrawable(localz0.g(j.k2));
    ((ImageView)localObject).setImageDrawable(localz0.g(j.w2));
    localImageView3.setImageDrawable(localz0.g(paramInt));
    this.p = localz0.g(j.s2);
    c1.a(paramAttributeSet, getResources().getString(h.n));
    this.q = localz0.n(j.v2, g.q);
    this.r = localz0.n(j.l2, 0);
    paramAttributeSet.setOnClickListener(localf);
    localImageView2.setOnClickListener(localf);
    localImageView1.setOnClickListener(localf);
    ((View)localObject).setOnClickListener(localf);
    paramContext.setOnClickListener(localf);
    paramContext.addTextChangedListener(this.g0);
    paramContext.setOnEditorActionListener(localh);
    paramContext.setOnItemClickListener(locali);
    paramContext.setOnItemSelectedListener(localj);
    paramContext.setOnKeyListener(this.c0);
    paramContext.setOnFocusChangeListener(new d());
    setIconifiedByDefault(localz0.a(j.o2, true));
    paramInt = localz0.f(j.h2, -1);
    if (paramInt != -1) {
      setMaxWidth(paramInt);
    }
    this.x = localz0.p(j.m2);
    this.K = localz0.p(j.r2);
    paramInt = localz0.k(j.j2, -1);
    if (paramInt != -1) {
      setImeOptions(paramInt);
    }
    paramInt = localz0.k(j.i2, -1);
    if (paramInt != -1) {
      setInputType(paramInt);
    }
    setFocusable(localz0.a(j.g2, true));
    localz0.w();
    paramAttributeSet = new Intent("android.speech.action.WEB_SEARCH");
    this.v = paramAttributeSet;
    paramAttributeSet.addFlags(268435456);
    paramAttributeSet.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    paramAttributeSet = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    this.w = paramAttributeSet;
    paramAttributeSet.addFlags(268435456);
    paramContext = findViewById(paramContext.getDropDownAnchor());
    this.i = paramContext;
    if (paramContext != null) {
      paramContext.addOnLayoutChangeListener(new e());
    }
    K(this.G);
    G();
  }
  
  private void B()
  {
    post(this.V);
  }
  
  private void C(int paramInt)
  {
    Editable localEditable = this.a.getText();
    Object localObject = this.I.b();
    if (localObject == null) {
      return;
    }
    if (((Cursor)localObject).moveToPosition(paramInt))
    {
      localObject = this.I.convertToString((Cursor)localObject);
      if (localObject != null) {
        setQuery((CharSequence)localObject);
      } else {
        setQuery(localEditable);
      }
    }
    else
    {
      setQuery(localEditable);
    }
  }
  
  private void E()
  {
    boolean bool = TextUtils.isEmpty(this.a.getText());
    int i1 = 1;
    int i2 = bool ^ true;
    int i3 = 0;
    int i4 = i1;
    if (i2 == 0) {
      if ((this.G) && (!this.R)) {
        i4 = i1;
      } else {
        i4 = 0;
      }
    }
    Object localObject = this.g;
    if (i4 != 0) {
      i4 = i3;
    } else {
      i4 = 8;
    }
    ((ImageView)localObject).setVisibility(i4);
    Drawable localDrawable = this.g.getDrawable();
    if (localDrawable != null)
    {
      if (i2 != 0) {
        localObject = ViewGroup.ENABLED_STATE_SET;
      } else {
        localObject = ViewGroup.EMPTY_STATE_SET;
      }
      localDrawable.setState((int[])localObject);
    }
  }
  
  private void G()
  {
    CharSequence localCharSequence = getQueryHint();
    SearchAutoComplete localSearchAutoComplete = this.a;
    Object localObject = localCharSequence;
    if (localCharSequence == null) {
      localObject = "";
    }
    localSearchAutoComplete.setHint(j((CharSequence)localObject));
  }
  
  private void H()
  {
    this.a.setThreshold(this.T.getSuggestThreshold());
    this.a.setImeOptions(this.T.getImeOptions());
    int i1 = this.T.getInputType();
    int i2 = 1;
    int i3 = i1;
    if ((i1 & 0xF) == 1)
    {
      i1 &= 0xFFFEFFFF;
      i3 = i1;
      if (this.T.getSuggestAuthority() != null) {
        i3 = i1 | 0x10000 | 0x80000;
      }
    }
    this.a.setInputType(i3);
    Object localObject = this.I;
    if (localObject != null) {
      ((x.a)localObject).a(null);
    }
    if (this.T.getSuggestAuthority() != null)
    {
      localObject = new t0(getContext(), this, this.T, this.a0);
      this.I = ((x.a)localObject);
      this.a.setAdapter((ListAdapter)localObject);
      localObject = (t0)this.I;
      i3 = i2;
      if (this.L) {
        i3 = 2;
      }
      ((t0)localObject).w(i3);
    }
  }
  
  private void I()
  {
    int i1;
    if ((n()) && ((this.f.getVisibility() == 0) || (this.h.getVisibility() == 0))) {
      i1 = 0;
    } else {
      i1 = 8;
    }
    this.d.setVisibility(i1);
  }
  
  private void J(boolean paramBoolean)
  {
    int i1;
    if ((this.J) && (n()) && (hasFocus()) && ((paramBoolean) || (!this.O))) {
      i1 = 0;
    } else {
      i1 = 8;
    }
    this.f.setVisibility(i1);
  }
  
  private void K(boolean paramBoolean)
  {
    this.H = paramBoolean;
    int i1 = 0;
    int i2;
    if (paramBoolean) {
      i2 = 0;
    } else {
      i2 = 8;
    }
    boolean bool = TextUtils.isEmpty(this.a.getText()) ^ true;
    this.e.setVisibility(i2);
    J(bool);
    View localView = this.b;
    if (paramBoolean) {
      i2 = 8;
    } else {
      i2 = 0;
    }
    localView.setVisibility(i2);
    if (this.o.getDrawable() != null)
    {
      i2 = i1;
      if (!this.G) {}
    }
    else
    {
      i2 = 8;
    }
    this.o.setVisibility(i2);
    E();
    L(bool ^ true);
    I();
  }
  
  private void L(boolean paramBoolean)
  {
    boolean bool = this.O;
    int i1 = 8;
    int i2 = i1;
    if (bool)
    {
      i2 = i1;
      if (!l())
      {
        i2 = i1;
        if (paramBoolean)
        {
          this.f.setVisibility(8);
          i2 = 0;
        }
      }
    }
    this.h.setVisibility(i2);
  }
  
  private Intent c(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    paramString1 = new Intent(paramString1);
    paramString1.addFlags(268435456);
    if (paramUri != null) {
      paramString1.setData(paramUri);
    }
    paramString1.putExtra("user_query", this.Q);
    if (paramString3 != null) {
      paramString1.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      paramString1.putExtra("intent_extra_data_key", paramString2);
    }
    paramUri = this.U;
    if (paramUri != null) {
      paramString1.putExtra("app_data", paramUri);
    }
    if (paramInt != 0)
    {
      paramString1.putExtra("action_key", paramInt);
      paramString1.putExtra("action_msg", paramString4);
    }
    paramString1.setComponent(this.T.getSearchActivity());
    return paramString1;
  }
  
  private Intent d(Cursor paramCursor, int paramInt, String paramString)
  {
    try
    {
      Object localObject1 = t0.n(paramCursor, "suggest_intent_action");
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = this.T.getSuggestIntentAction();
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = "android.intent.action.SEARCH";
      }
      Object localObject3 = t0.n(paramCursor, "suggest_intent_data");
      localObject2 = localObject3;
      if (localObject3 == null) {
        localObject2 = this.T.getSuggestIntentData();
      }
      localObject3 = localObject2;
      if (localObject2 != null)
      {
        String str = t0.n(paramCursor, "suggest_intent_data_id");
        localObject3 = localObject2;
        if (str != null)
        {
          localObject3 = new java/lang/StringBuilder;
          ((StringBuilder)localObject3).<init>();
          ((StringBuilder)localObject3).append((String)localObject2);
          ((StringBuilder)localObject3).append("/");
          ((StringBuilder)localObject3).append(Uri.encode(str));
          localObject3 = ((StringBuilder)localObject3).toString();
        }
      }
      if (localObject3 == null) {
        localObject2 = null;
      } else {
        localObject2 = Uri.parse((String)localObject3);
      }
      localObject3 = t0.n(paramCursor, "suggest_intent_query");
      paramString = c((String)localObject1, (Uri)localObject2, t0.n(paramCursor, "suggest_intent_extra_data"), (String)localObject3, paramInt, paramString);
      return paramString;
    }
    catch (RuntimeException paramString)
    {
      try
      {
        paramInt = paramCursor.getPosition();
      }
      catch (RuntimeException paramCursor)
      {
        paramInt = -1;
      }
      paramCursor = new StringBuilder();
      paramCursor.append("Search suggestions cursor at row ");
      paramCursor.append(paramInt);
      paramCursor.append(" returned exception.");
      Log.w("SearchView", paramCursor.toString(), paramString);
    }
    return null;
  }
  
  private Intent e(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    ComponentName localComponentName = paramSearchableInfo.getSearchActivity();
    Object localObject1 = new Intent("android.intent.action.SEARCH");
    ((Intent)localObject1).setComponent(localComponentName);
    PendingIntent localPendingIntent = PendingIntent.getActivity(getContext(), 0, (Intent)localObject1, 1107296256);
    Bundle localBundle = new Bundle();
    localObject1 = this.U;
    if (localObject1 != null) {
      localBundle.putParcelable("app_data", (Parcelable)localObject1);
    }
    Intent localIntent = new Intent(paramIntent);
    int i1 = 1;
    Object localObject2 = getResources();
    if (paramSearchableInfo.getVoiceLanguageModeId() != 0) {
      paramIntent = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageModeId());
    } else {
      paramIntent = "free_form";
    }
    int i2 = paramSearchableInfo.getVoicePromptTextId();
    Object localObject3 = null;
    if (i2 != 0) {
      localObject1 = ((Resources)localObject2).getString(paramSearchableInfo.getVoicePromptTextId());
    } else {
      localObject1 = null;
    }
    if (paramSearchableInfo.getVoiceLanguageId() != 0) {
      localObject2 = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageId());
    } else {
      localObject2 = null;
    }
    if (paramSearchableInfo.getVoiceMaxResults() != 0) {
      i1 = paramSearchableInfo.getVoiceMaxResults();
    }
    localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", paramIntent);
    localIntent.putExtra("android.speech.extra.PROMPT", (String)localObject1);
    localIntent.putExtra("android.speech.extra.LANGUAGE", (String)localObject2);
    localIntent.putExtra("android.speech.extra.MAX_RESULTS", i1);
    if (localComponentName == null) {
      paramIntent = localObject3;
    } else {
      paramIntent = localComponentName.flattenToShortString();
    }
    localIntent.putExtra("calling_package", paramIntent);
    localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", localPendingIntent);
    localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", localBundle);
    return localIntent;
  }
  
  private Intent f(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Intent localIntent = new Intent(paramIntent);
    paramIntent = paramSearchableInfo.getSearchActivity();
    if (paramIntent == null) {
      paramIntent = null;
    } else {
      paramIntent = paramIntent.flattenToShortString();
    }
    localIntent.putExtra("calling_package", paramIntent);
    return localIntent;
  }
  
  private void g()
  {
    this.a.dismissDropDown();
  }
  
  private int getPreferredHeight()
  {
    return getContext().getResources().getDimensionPixelSize(d.g);
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(d.h);
  }
  
  private void i(View paramView, Rect paramRect)
  {
    paramView.getLocationInWindow(this.m);
    getLocationInWindow(this.n);
    int[] arrayOfInt1 = this.m;
    int i1 = arrayOfInt1[1];
    int[] arrayOfInt2 = this.n;
    i1 -= arrayOfInt2[1];
    int i2 = arrayOfInt1[0] - arrayOfInt2[0];
    paramRect.set(i2, i1, paramView.getWidth() + i2, paramView.getHeight() + i1);
  }
  
  private CharSequence j(CharSequence paramCharSequence)
  {
    if ((this.G) && (this.p != null))
    {
      int i1 = (int)(this.a.getTextSize() * 1.25D);
      this.p.setBounds(0, 0, i1, i1);
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
      localSpannableStringBuilder.setSpan(new ImageSpan(this.p), 1, 2, 33);
      localSpannableStringBuilder.append(paramCharSequence);
      return localSpannableStringBuilder;
    }
    return paramCharSequence;
  }
  
  private boolean k()
  {
    Object localObject = this.T;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (localObject != null)
    {
      bool2 = bool1;
      if (((SearchableInfo)localObject).getVoiceSearchEnabled())
      {
        localObject = null;
        if (this.T.getVoiceSearchLaunchWebSearch()) {
          localObject = this.v;
        } else if (this.T.getVoiceSearchLaunchRecognizer()) {
          localObject = this.w;
        }
        bool2 = bool1;
        if (localObject != null)
        {
          bool2 = bool1;
          if (getContext().getPackageManager().resolveActivity((Intent)localObject, 65536) != null) {
            bool2 = true;
          }
        }
      }
    }
    return bool2;
  }
  
  static boolean m(Context paramContext)
  {
    boolean bool;
    if (paramContext.getResources().getConfiguration().orientation == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean n()
  {
    boolean bool;
    if (((this.J) || (this.O)) && (!l())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void o(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    try
    {
      getContext().startActivity(paramIntent);
    }
    catch (RuntimeException localRuntimeException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Failed launch activity: ");
      localStringBuilder.append(paramIntent);
      Log.e("SearchView", localStringBuilder.toString(), localRuntimeException);
    }
  }
  
  private boolean q(int paramInt1, int paramInt2, String paramString)
  {
    Cursor localCursor = this.I.b();
    if ((localCursor != null) && (localCursor.moveToPosition(paramInt1)))
    {
      o(d(localCursor, paramInt2, paramString));
      return true;
    }
    return false;
  }
  
  private void setQuery(CharSequence paramCharSequence)
  {
    this.a.setText(paramCharSequence);
    SearchAutoComplete localSearchAutoComplete = this.a;
    int i1;
    if (TextUtils.isEmpty(paramCharSequence)) {
      i1 = 0;
    } else {
      i1 = paramCharSequence.length();
    }
    localSearchAutoComplete.setSelection(i1);
  }
  
  void A()
  {
    Object localObject = this.T;
    if (localObject == null) {
      return;
    }
    try
    {
      if (((SearchableInfo)localObject).getVoiceSearchLaunchWebSearch())
      {
        localObject = f(this.v, (SearchableInfo)localObject);
        getContext().startActivity((Intent)localObject);
      }
      else if (((SearchableInfo)localObject).getVoiceSearchLaunchRecognizer())
      {
        localObject = e(this.w, (SearchableInfo)localObject);
        getContext().startActivity((Intent)localObject);
      }
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Log.w("SearchView", "Could not find voice search activity");
    }
  }
  
  public void D(CharSequence paramCharSequence, boolean paramBoolean)
  {
    this.a.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      SearchAutoComplete localSearchAutoComplete = this.a;
      localSearchAutoComplete.setSelection(localSearchAutoComplete.length());
      this.Q = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence))) {
      w();
    }
  }
  
  void F()
  {
    int[] arrayOfInt;
    if (this.a.hasFocus()) {
      arrayOfInt = ViewGroup.FOCUSED_STATE_SET;
    } else {
      arrayOfInt = ViewGroup.EMPTY_STATE_SET;
    }
    Drawable localDrawable = this.c.getBackground();
    if (localDrawable != null) {
      localDrawable.setState(arrayOfInt);
    }
    localDrawable = this.d.getBackground();
    if (localDrawable != null) {
      localDrawable.setState(arrayOfInt);
    }
    invalidate();
  }
  
  void b()
  {
    if (this.i.getWidth() > 1)
    {
      Resources localResources = getContext().getResources();
      int i1 = this.c.getPaddingLeft();
      Rect localRect = new Rect();
      boolean bool = e1.b(this);
      int i2;
      if (this.G) {
        i2 = localResources.getDimensionPixelSize(d.e) + localResources.getDimensionPixelSize(d.f);
      } else {
        i2 = 0;
      }
      this.a.getDropDownBackground().getPadding(localRect);
      if (bool) {
        i3 = -localRect.left;
      } else {
        i3 = i1 - (localRect.left + i2);
      }
      this.a.setDropDownHorizontalOffset(i3);
      int i4 = this.i.getWidth();
      int i5 = localRect.left;
      int i3 = localRect.right;
      this.a.setDropDownWidth(i4 + i5 + i3 + i2 - i1);
    }
  }
  
  public void clearFocus()
  {
    this.M = true;
    super.clearFocus();
    this.a.clearFocus();
    this.a.setImeVisibility(false);
    this.M = false;
  }
  
  public int getImeOptions()
  {
    return this.a.getImeOptions();
  }
  
  public int getInputType()
  {
    return this.a.getInputType();
  }
  
  public int getMaxWidth()
  {
    return this.N;
  }
  
  public CharSequence getQuery()
  {
    return this.a.getText();
  }
  
  public CharSequence getQueryHint()
  {
    Object localObject = this.K;
    if (localObject == null)
    {
      localObject = this.T;
      if ((localObject != null) && (((SearchableInfo)localObject).getHintId() != 0)) {
        localObject = getContext().getText(this.T.getHintId());
      } else {
        localObject = this.x;
      }
    }
    return localObject;
  }
  
  int getSuggestionCommitIconResId()
  {
    return this.r;
  }
  
  int getSuggestionRowLayout()
  {
    return this.q;
  }
  
  public x.a getSuggestionsAdapter()
  {
    return this.I;
  }
  
  void h()
  {
    if (Build.VERSION.SDK_INT >= 29)
    {
      this.a.refreshAutoCompleteResults();
    }
    else
    {
      n localn = h0;
      localn.b(this.a);
      localn.a(this.a);
    }
  }
  
  public boolean l()
  {
    return this.H;
  }
  
  public void onActionViewCollapsed()
  {
    D("", false);
    clearFocus();
    K(true);
    this.a.setImeOptions(this.S);
    this.R = false;
  }
  
  public void onActionViewExpanded()
  {
    if (this.R) {
      return;
    }
    this.R = true;
    int i1 = this.a.getImeOptions();
    this.S = i1;
    this.a.setImeOptions(i1 | 0x2000000);
    this.a.setText("");
    setIconified(false);
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.V);
    post(this.W);
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean)
    {
      i(this.a, this.k);
      Object localObject = this.l;
      Rect localRect = this.k;
      ((Rect)localObject).set(localRect.left, 0, localRect.right, paramInt4 - paramInt2);
      localObject = this.j;
      if (localObject == null)
      {
        localObject = new o(this.l, this.k, this.a);
        this.j = ((o)localObject);
        setTouchDelegate((TouchDelegate)localObject);
      }
      else
      {
        ((o)localObject).a(this.l, this.k);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (l())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getSize(paramInt1);
    if (i1 != -2147483648)
    {
      if (i1 != 0)
      {
        if (i1 != 1073741824)
        {
          paramInt1 = i2;
        }
        else
        {
          i1 = this.N;
          paramInt1 = i2;
          if (i1 > 0) {
            paramInt1 = Math.min(i1, i2);
          }
        }
      }
      else
      {
        paramInt1 = this.N;
        if (paramInt1 <= 0) {
          paramInt1 = getPreferredWidth();
        }
      }
    }
    else
    {
      paramInt1 = this.N;
      if (paramInt1 > 0) {
        paramInt1 = Math.min(paramInt1, i2);
      } else {
        paramInt1 = Math.min(getPreferredWidth(), i2);
      }
    }
    i2 = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (i2 != -2147483648)
    {
      if (i2 == 0) {
        paramInt2 = getPreferredHeight();
      }
    }
    else {
      paramInt2 = Math.min(getPreferredHeight(), paramInt2);
    }
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    K(paramParcelable.isIconified);
    requestLayout();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.isIconified = l();
    return localSavedState;
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    B();
  }
  
  void p(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = c("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(paramString1);
  }
  
  void r()
  {
    if (TextUtils.isEmpty(this.a.getText()))
    {
      if (this.G)
      {
        k localk = this.z;
        if ((localk == null) || (!localk.a()))
        {
          clearFocus();
          K(true);
        }
      }
    }
    else
    {
      this.a.setText("");
      this.a.requestFocus();
      this.a.setImeVisibility(true);
    }
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (this.M) {
      return false;
    }
    if (!isFocusable()) {
      return false;
    }
    if (!l())
    {
      boolean bool = this.a.requestFocus(paramInt, paramRect);
      if (bool) {
        K(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  boolean s(int paramInt1, int paramInt2, String paramString)
  {
    paramString = this.E;
    if ((paramString != null) && (paramString.b(paramInt1))) {
      return false;
    }
    q(paramInt1, 0, null);
    this.a.setImeVisibility(false);
    g();
    return true;
  }
  
  public void setAppSearchData(Bundle paramBundle)
  {
    this.U = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean) {
      r();
    } else {
      v();
    }
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (this.G == paramBoolean) {
      return;
    }
    this.G = paramBoolean;
    K(paramBoolean);
    G();
  }
  
  public void setImeOptions(int paramInt)
  {
    this.a.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    this.a.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    this.N = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(k paramk)
  {
    this.z = paramk;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.D = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(l paraml)
  {
    this.y = paraml;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    this.F = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(m paramm)
  {
    this.E = paramm;
  }
  
  public void setQueryHint(CharSequence paramCharSequence)
  {
    this.K = paramCharSequence;
    G();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    this.L = paramBoolean;
    Object localObject = this.I;
    if ((localObject instanceof t0))
    {
      localObject = (t0)localObject;
      int i1;
      if (paramBoolean) {
        i1 = 2;
      } else {
        i1 = 1;
      }
      ((t0)localObject).w(i1);
    }
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    this.T = paramSearchableInfo;
    if (paramSearchableInfo != null)
    {
      H();
      G();
    }
    boolean bool = k();
    this.O = bool;
    if (bool) {
      this.a.setPrivateImeOptions("nm");
    }
    K(l());
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    this.J = paramBoolean;
    K(l());
  }
  
  public void setSuggestionsAdapter(x.a parama)
  {
    this.I = parama;
    this.a.setAdapter(parama);
  }
  
  boolean t(int paramInt)
  {
    m localm = this.E;
    if ((localm != null) && (localm.a(paramInt))) {
      return false;
    }
    C(paramInt);
    return true;
  }
  
  void u(CharSequence paramCharSequence)
  {
    setQuery(paramCharSequence);
  }
  
  void v()
  {
    K(false);
    this.a.requestFocus();
    this.a.setImeVisibility(true);
    View.OnClickListener localOnClickListener = this.F;
    if (localOnClickListener != null) {
      localOnClickListener.onClick(this);
    }
  }
  
  void w()
  {
    Editable localEditable = this.a.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0))
    {
      l locall = this.y;
      if ((locall == null) || (!locall.b(localEditable.toString())))
      {
        if (this.T != null) {
          p(0, null, localEditable.toString());
        }
        this.a.setImeVisibility(false);
        g();
      }
    }
  }
  
  boolean x(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.T == null) {
      return false;
    }
    if (this.I == null) {
      return false;
    }
    if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.hasNoModifiers())) {
      if ((paramInt != 66) && (paramInt != 84) && (paramInt != 61))
      {
        if ((paramInt != 21) && (paramInt != 22))
        {
          if (paramInt == 19)
          {
            this.a.getListSelection();
            return false;
          }
        }
        else
        {
          if (paramInt == 21) {
            paramInt = 0;
          } else {
            paramInt = this.a.length();
          }
          this.a.setSelection(paramInt);
          this.a.setListSelection(0);
          this.a.clearListSelection();
          this.a.a();
          return true;
        }
      }
      else {
        return s(this.a.getListSelection(), 0, null);
      }
    }
    return false;
  }
  
  void y(CharSequence paramCharSequence)
  {
    Editable localEditable = this.a.getText();
    this.Q = localEditable;
    boolean bool = TextUtils.isEmpty(localEditable) ^ true;
    J(bool);
    L(bool ^ true);
    E();
    I();
    if ((this.y != null) && (!TextUtils.equals(paramCharSequence, this.P))) {
      this.y.a(paramCharSequence.toString());
    }
    this.P = paramCharSequence.toString();
  }
  
  void z()
  {
    K(l());
    B();
    if (this.a.hasFocus()) {
      h();
    }
  }
  
  static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    boolean isIconified;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.isIconified = ((Boolean)paramParcel.readValue(null)).booleanValue();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("SearchView.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" isIconified=");
      localStringBuilder.append(this.isIconified);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeValue(Boolean.valueOf(this.isIconified));
    }
    
    class a
      implements Parcelable.ClassLoaderCreator<SearchView.SavedState>
    {
      public SearchView.SavedState a(Parcel paramParcel)
      {
        return new SearchView.SavedState(paramParcel, null);
      }
      
      public SearchView.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        return new SearchView.SavedState(paramParcel, paramClassLoader);
      }
      
      public SearchView.SavedState[] c(int paramInt)
      {
        return new SearchView.SavedState[paramInt];
      }
    }
  }
  
  public static class SearchAutoComplete
    extends c
  {
    private int a = getThreshold();
    private SearchView b;
    private boolean c;
    final Runnable d = new a();
    
    public SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet)
    {
      this(paramContext, paramAttributeSet, d.a.p);
    }
    
    public SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
    }
    
    private int getSearchViewTextMinWidthDp()
    {
      Configuration localConfiguration = getResources().getConfiguration();
      int i = localConfiguration.screenWidthDp;
      int j = localConfiguration.screenHeightDp;
      if ((i >= 960) && (j >= 720) && (localConfiguration.orientation == 2)) {
        return 256;
      }
      if ((i < 600) && ((i < 640) || (j < 480))) {
        return 160;
      }
      return 192;
    }
    
    void a()
    {
      if (Build.VERSION.SDK_INT >= 29)
      {
        setInputMethodMode(1);
        if (enoughToFilter()) {
          showDropDown();
        }
      }
      else
      {
        SearchView.h0.c(this);
      }
    }
    
    boolean b()
    {
      boolean bool;
      if (TextUtils.getTrimmedLength(getText()) == 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    void c()
    {
      if (this.c)
      {
        ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this, 0);
        this.c = false;
      }
    }
    
    public boolean enoughToFilter()
    {
      boolean bool;
      if ((this.a > 0) && (!super.enoughToFilter())) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
    {
      paramEditorInfo = super.onCreateInputConnection(paramEditorInfo);
      if (this.c)
      {
        removeCallbacks(this.d);
        post(this.d);
      }
      return paramEditorInfo;
    }
    
    protected void onFinishInflate()
    {
      super.onFinishInflate();
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      setMinWidth((int)TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), localDisplayMetrics));
    }
    
    protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
    {
      super.onFocusChanged(paramBoolean, paramInt, paramRect);
      this.b.z();
    }
    
    public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 4)
      {
        KeyEvent.DispatcherState localDispatcherState;
        if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
        {
          localDispatcherState = getKeyDispatcherState();
          if (localDispatcherState != null) {
            localDispatcherState.startTracking(paramKeyEvent, this);
          }
          return true;
        }
        if (paramKeyEvent.getAction() == 1)
        {
          localDispatcherState = getKeyDispatcherState();
          if (localDispatcherState != null) {
            localDispatcherState.handleUpEvent(paramKeyEvent);
          }
          if ((paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()))
          {
            this.b.clearFocus();
            setImeVisibility(false);
            return true;
          }
        }
      }
      return super.onKeyPreIme(paramInt, paramKeyEvent);
    }
    
    public void onWindowFocusChanged(boolean paramBoolean)
    {
      super.onWindowFocusChanged(paramBoolean);
      if ((paramBoolean) && (this.b.hasFocus()) && (getVisibility() == 0))
      {
        this.c = true;
        if (SearchView.m(getContext())) {
          a();
        }
      }
    }
    
    public void performCompletion() {}
    
    protected void replaceText(CharSequence paramCharSequence) {}
    
    void setImeVisibility(boolean paramBoolean)
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
      if (!paramBoolean)
      {
        this.c = false;
        removeCallbacks(this.d);
        localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        return;
      }
      if (localInputMethodManager.isActive(this))
      {
        this.c = false;
        removeCallbacks(this.d);
        localInputMethodManager.showSoftInput(this, 0);
        return;
      }
      this.c = true;
    }
    
    void setSearchView(SearchView paramSearchView)
    {
      this.b = paramSearchView;
    }
    
    public void setThreshold(int paramInt)
    {
      super.setThreshold(paramInt);
      this.a = paramInt;
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        SearchView.SearchAutoComplete.this.c();
      }
    }
  }
  
  class a
    implements TextWatcher
  {
    a() {}
    
    public void afterTextChanged(Editable paramEditable) {}
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      SearchView.this.y(paramCharSequence);
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      SearchView.this.F();
    }
  }
  
  class c
    implements Runnable
  {
    c() {}
    
    public void run()
    {
      x.a locala = SearchView.this.I;
      if ((locala instanceof t0)) {
        locala.a(null);
      }
    }
  }
  
  class d
    implements View.OnFocusChangeListener
  {
    d() {}
    
    public void onFocusChange(View paramView, boolean paramBoolean)
    {
      SearchView localSearchView = SearchView.this;
      paramView = localSearchView.D;
      if (paramView != null) {
        paramView.onFocusChange(localSearchView, paramBoolean);
      }
    }
  }
  
  class e
    implements View.OnLayoutChangeListener
  {
    e() {}
    
    public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
    {
      SearchView.this.b();
    }
  }
  
  class f
    implements View.OnClickListener
  {
    f() {}
    
    public void onClick(View paramView)
    {
      SearchView localSearchView = SearchView.this;
      if (paramView == localSearchView.e) {
        localSearchView.v();
      } else if (paramView == localSearchView.g) {
        localSearchView.r();
      } else if (paramView == localSearchView.f) {
        localSearchView.w();
      } else if (paramView == localSearchView.h) {
        localSearchView.A();
      } else if (paramView == localSearchView.a) {
        localSearchView.h();
      }
    }
  }
  
  class g
    implements View.OnKeyListener
  {
    g() {}
    
    public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
    {
      SearchView localSearchView = SearchView.this;
      if (localSearchView.T == null) {
        return false;
      }
      if ((localSearchView.a.isPopupShowing()) && (SearchView.this.a.getListSelection() != -1)) {
        return SearchView.this.x(paramView, paramInt, paramKeyEvent);
      }
      if ((!SearchView.this.a.b()) && (paramKeyEvent.hasNoModifiers()) && (paramKeyEvent.getAction() == 1) && (paramInt == 66))
      {
        paramView.cancelLongPress();
        paramView = SearchView.this;
        paramView.p(0, null, paramView.a.getText().toString());
        return true;
      }
      return false;
    }
  }
  
  class h
    implements TextView.OnEditorActionListener
  {
    h() {}
    
    public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
    {
      SearchView.this.w();
      return true;
    }
  }
  
  class i
    implements AdapterView.OnItemClickListener
  {
    i() {}
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      SearchView.this.s(paramInt, 0, null);
    }
  }
  
  class j
    implements AdapterView.OnItemSelectedListener
  {
    j() {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      SearchView.this.t(paramInt);
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
  
  public static abstract interface k
  {
    public abstract boolean a();
  }
  
  public static abstract interface l
  {
    public abstract boolean a(String paramString);
    
    public abstract boolean b(String paramString);
  }
  
  public static abstract interface m
  {
    public abstract boolean a(int paramInt);
    
    public abstract boolean b(int paramInt);
  }
  
  private static class n
  {
    private Method a = null;
    private Method b = null;
    private Method c = null;
    
    @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
    n()
    {
      d();
      try
      {
        localMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
        this.a = localMethod;
        localMethod.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        try
        {
          localMethod = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
          this.b = localMethod;
          localMethod.setAccessible(true);
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          try
          {
            for (;;)
            {
              Method localMethod = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { Boolean.TYPE });
              this.c = localMethod;
              localMethod.setAccessible(true);
              label94:
              return;
              localNoSuchMethodException1 = localNoSuchMethodException1;
              continue;
              localNoSuchMethodException2 = localNoSuchMethodException2;
            }
          }
          catch (NoSuchMethodException localNoSuchMethodException3)
          {
            break label94;
          }
        }
      }
    }
    
    private static void d()
    {
      if (Build.VERSION.SDK_INT < 29) {
        return;
      }
      throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
    }
    
    void a(AutoCompleteTextView paramAutoCompleteTextView)
    {
      d();
      Method localMethod = this.b;
      if (localMethod != null) {}
      try
      {
        localMethod.invoke(paramAutoCompleteTextView, new Object[0]);
        label22:
        return;
      }
      catch (Exception paramAutoCompleteTextView)
      {
        break label22;
      }
    }
    
    void b(AutoCompleteTextView paramAutoCompleteTextView)
    {
      d();
      Method localMethod = this.a;
      if (localMethod != null) {}
      try
      {
        localMethod.invoke(paramAutoCompleteTextView, new Object[0]);
        label22:
        return;
      }
      catch (Exception paramAutoCompleteTextView)
      {
        break label22;
      }
    }
    
    void c(AutoCompleteTextView paramAutoCompleteTextView)
    {
      d();
      Method localMethod = this.c;
      if (localMethod != null) {}
      try
      {
        localMethod.invoke(paramAutoCompleteTextView, new Object[] { Boolean.TRUE });
        label28:
        return;
      }
      catch (Exception paramAutoCompleteTextView)
      {
        break label28;
      }
    }
  }
  
  private static class o
    extends TouchDelegate
  {
    private final View a;
    private final Rect b;
    private final Rect c;
    private final Rect d;
    private final int e;
    private boolean f;
    
    public o(Rect paramRect1, Rect paramRect2, View paramView)
    {
      super(paramView);
      this.e = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
      this.b = new Rect();
      this.d = new Rect();
      this.c = new Rect();
      a(paramRect1, paramRect2);
      this.a = paramView;
    }
    
    public void a(Rect paramRect1, Rect paramRect2)
    {
      this.b.set(paramRect1);
      this.d.set(paramRect1);
      paramRect1 = this.d;
      int i = this.e;
      paramRect1.inset(-i, -i);
      this.c.set(paramRect2);
    }
    
    public boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      int i = (int)paramMotionEvent.getX();
      int j = (int)paramMotionEvent.getY();
      int k = paramMotionEvent.getAction();
      boolean bool1 = true;
      boolean bool2 = false;
      if (k != 0)
      {
        if ((k != 1) && (k != 2))
        {
          if (k != 3) {
            break label134;
          }
          bool1 = this.f;
          this.f = false;
        }
        else
        {
          bool3 = this.f;
          bool1 = bool3;
          if (bool3)
          {
            bool1 = bool3;
            if (!this.d.contains(i, j))
            {
              bool1 = bool3;
              k = 0;
              break label140;
            }
          }
        }
        k = 1;
        break label140;
      }
      else if (this.b.contains(i, j))
      {
        this.f = true;
        k = 1;
        break label140;
      }
      label134:
      k = 1;
      bool1 = false;
      label140:
      boolean bool3 = bool2;
      if (bool1)
      {
        if ((k != 0) && (!this.c.contains(i, j)))
        {
          paramMotionEvent.setLocation(this.a.getWidth() / 2, this.a.getHeight() / 2);
        }
        else
        {
          Rect localRect = this.c;
          paramMotionEvent.setLocation(i - localRect.left, j - localRect.top);
        }
        bool3 = this.a.dispatchTouchEvent(paramMotionEvent);
      }
      return bool3;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.SearchView
 * JD-Core Version:    0.7.0.1
 */