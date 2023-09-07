package androidx.databinding;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.v;
import androidx.lifecycle.w;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

public abstract class ViewDataBinding
  extends a
{
  private static final int BINDING_NUMBER_START = 8;
  public static final String BINDING_TAG_PREFIX = "binding_";
  private static final d CREATE_LIST_LISTENER;
  private static final d CREATE_LIVE_DATA_LISTENER;
  private static final d CREATE_MAP_LISTENER;
  private static final d CREATE_PROPERTY_LISTENER;
  private static final int HALTED = 2;
  private static final int REBIND = 1;
  private static final c.a<n, ViewDataBinding, Void> REBIND_NOTIFIER;
  private static final int REBOUND = 3;
  private static final View.OnAttachStateChangeListener ROOT_REATTACHED_LISTENER = new f();
  static int SDK_INT = Build.VERSION.SDK_INT;
  private static final boolean USE_CHOREOGRAPHER = true;
  private static final ReferenceQueue<ViewDataBinding> sReferenceQueue;
  protected final f mBindingComponent;
  private Choreographer mChoreographer;
  private ViewDataBinding mContainingBinding;
  private final Choreographer.FrameCallback mFrameCallback;
  private boolean mInLiveDataRegisterObserver;
  protected boolean mInStateFlowRegisterObserver;
  private boolean mIsExecutingPendingBindings;
  private androidx.lifecycle.n mLifecycleOwner;
  private q[] mLocalFieldObservers;
  private OnStartListener mOnStartListener;
  private boolean mPendingRebind = false;
  private c<n, ViewDataBinding, Void> mRebindCallbacks;
  private boolean mRebindHalted = false;
  private final Runnable mRebindRunnable = new g();
  private final View mRoot;
  private Handler mUIThreadHandler;
  
  static
  {
    CREATE_PROPERTY_LISTENER = new a();
    CREATE_LIST_LISTENER = new b();
    CREATE_MAP_LISTENER = new c();
    CREATE_LIVE_DATA_LISTENER = new d();
    REBIND_NOTIFIER = new e();
    sReferenceQueue = new ReferenceQueue();
  }
  
  protected ViewDataBinding(f paramf, View paramView, int paramInt)
  {
    this.mBindingComponent = paramf;
    this.mLocalFieldObservers = new q[paramInt];
    this.mRoot = paramView;
    if (Looper.myLooper() != null)
    {
      if (USE_CHOREOGRAPHER)
      {
        this.mChoreographer = Choreographer.getInstance();
        this.mFrameCallback = new h();
      }
      else
      {
        this.mFrameCallback = null;
        this.mUIThreadHandler = new Handler(Looper.myLooper());
      }
      return;
    }
    throw new IllegalStateException("DataBinding must be created in view's UI Thread");
  }
  
  protected ViewDataBinding(Object paramObject, View paramView, int paramInt)
  {
    this(checkAndCastToBindingComponent(paramObject), paramView, paramInt);
  }
  
  protected static ViewDataBinding bind(Object paramObject, View paramView, int paramInt)
  {
    return g.a(checkAndCastToBindingComponent(paramObject), paramView, paramInt);
  }
  
  private static f checkAndCastToBindingComponent(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof f)) {
      return (f)paramObject;
    }
    throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
  }
  
  private void executeBindingsInternal()
  {
    if (this.mIsExecutingPendingBindings)
    {
      requestRebind();
      return;
    }
    if (!hasPendingBindings()) {
      return;
    }
    this.mIsExecutingPendingBindings = true;
    this.mRebindHalted = false;
    c localc = this.mRebindCallbacks;
    if (localc != null)
    {
      localc.e(this, 1, null);
      if (this.mRebindHalted) {
        this.mRebindCallbacks.e(this, 2, null);
      }
    }
    if (!this.mRebindHalted)
    {
      executeBindings();
      localc = this.mRebindCallbacks;
      if (localc != null) {
        localc.e(this, 3, null);
      }
    }
    this.mIsExecutingPendingBindings = false;
  }
  
  protected static void executeBindingsOn(ViewDataBinding paramViewDataBinding)
  {
    paramViewDataBinding.executeBindingsInternal();
  }
  
  private static int findIncludeIndex(String paramString, int paramInt1, i parami, int paramInt2)
  {
    paramString.subSequence(paramString.indexOf('/') + 1, paramString.length() - 2);
    throw null;
  }
  
  private static int findLastMatching(ViewGroup paramViewGroup, int paramInt)
  {
    String str1 = (String)paramViewGroup.getChildAt(paramInt).getTag();
    String str2 = str1.substring(0, str1.length() - 1);
    int i = str2.length();
    int j = paramViewGroup.getChildCount();
    int k = paramInt + 1;
    int m = paramInt;
    paramInt = k;
    while (paramInt < j)
    {
      Object localObject = paramViewGroup.getChildAt(paramInt);
      if ((((View)localObject).getTag() instanceof String)) {
        localObject = (String)((View)localObject).getTag();
      } else {
        localObject = null;
      }
      k = m;
      if (localObject != null)
      {
        k = m;
        if (((String)localObject).startsWith(str2))
        {
          if ((((String)localObject).length() == str1.length()) && (((String)localObject).charAt(((String)localObject).length() - 1) == '0')) {
            return m;
          }
          k = m;
          if (isNumeric((String)localObject, i)) {
            k = paramInt;
          }
        }
      }
      paramInt++;
      m = k;
    }
    return m;
  }
  
  static ViewDataBinding getBinding(View paramView)
  {
    if (paramView != null) {
      return (ViewDataBinding)paramView.getTag(z.a.a);
    }
    return null;
  }
  
  public static int getBuildSdkInt()
  {
    return SDK_INT;
  }
  
  protected static int getColorFromResource(View paramView, int paramInt)
  {
    return paramView.getContext().getColor(paramInt);
  }
  
  protected static ColorStateList getColorStateListFromResource(View paramView, int paramInt)
  {
    return paramView.getContext().getColorStateList(paramInt);
  }
  
  protected static Drawable getDrawableFromResource(View paramView, int paramInt)
  {
    return paramView.getContext().getDrawable(paramInt);
  }
  
  protected static <K, T> T getFrom(Map<K, T> paramMap, K paramK)
  {
    if (paramMap == null) {
      return null;
    }
    return paramMap.get(paramK);
  }
  
  protected static byte getFromArray(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte != null) && (paramInt >= 0) && (paramInt < paramArrayOfByte.length)) {
      return paramArrayOfByte[paramInt];
    }
    return 0;
  }
  
  protected static char getFromArray(char[] paramArrayOfChar, int paramInt)
  {
    if ((paramArrayOfChar != null) && (paramInt >= 0) && (paramInt < paramArrayOfChar.length)) {
      return paramArrayOfChar[paramInt];
    }
    return '\000';
  }
  
  protected static double getFromArray(double[] paramArrayOfDouble, int paramInt)
  {
    if ((paramArrayOfDouble != null) && (paramInt >= 0) && (paramInt < paramArrayOfDouble.length)) {
      return paramArrayOfDouble[paramInt];
    }
    return 0.0D;
  }
  
  protected static float getFromArray(float[] paramArrayOfFloat, int paramInt)
  {
    if ((paramArrayOfFloat != null) && (paramInt >= 0) && (paramInt < paramArrayOfFloat.length)) {
      return paramArrayOfFloat[paramInt];
    }
    return 0.0F;
  }
  
  protected static int getFromArray(int[] paramArrayOfInt, int paramInt)
  {
    if ((paramArrayOfInt != null) && (paramInt >= 0) && (paramInt < paramArrayOfInt.length)) {
      return paramArrayOfInt[paramInt];
    }
    return 0;
  }
  
  protected static long getFromArray(long[] paramArrayOfLong, int paramInt)
  {
    if ((paramArrayOfLong != null) && (paramInt >= 0) && (paramInt < paramArrayOfLong.length)) {
      return paramArrayOfLong[paramInt];
    }
    return 0L;
  }
  
  protected static <T> T getFromArray(T[] paramArrayOfT, int paramInt)
  {
    if ((paramArrayOfT != null) && (paramInt >= 0) && (paramInt < paramArrayOfT.length)) {
      return paramArrayOfT[paramInt];
    }
    return null;
  }
  
  protected static short getFromArray(short[] paramArrayOfShort, int paramInt)
  {
    if ((paramArrayOfShort != null) && (paramInt >= 0) && (paramInt < paramArrayOfShort.length)) {
      return paramArrayOfShort[paramInt];
    }
    return 0;
  }
  
  protected static boolean getFromArray(boolean[] paramArrayOfBoolean, int paramInt)
  {
    if ((paramArrayOfBoolean != null) && (paramInt >= 0) && (paramInt < paramArrayOfBoolean.length)) {
      return paramArrayOfBoolean[paramInt];
    }
    return false;
  }
  
  protected static int getFromList(SparseIntArray paramSparseIntArray, int paramInt)
  {
    if ((paramSparseIntArray != null) && (paramInt >= 0)) {
      return paramSparseIntArray.get(paramInt);
    }
    return 0;
  }
  
  @TargetApi(18)
  protected static long getFromList(SparseLongArray paramSparseLongArray, int paramInt)
  {
    if ((paramSparseLongArray != null) && (paramInt >= 0)) {
      return paramSparseLongArray.get(paramInt);
    }
    return 0L;
  }
  
  @TargetApi(16)
  protected static <T> T getFromList(LongSparseArray<T> paramLongSparseArray, int paramInt)
  {
    if ((paramLongSparseArray != null) && (paramInt >= 0)) {
      return paramLongSparseArray.get(paramInt);
    }
    return null;
  }
  
  protected static <T> T getFromList(SparseArray<T> paramSparseArray, int paramInt)
  {
    if ((paramSparseArray != null) && (paramInt >= 0)) {
      return paramSparseArray.get(paramInt);
    }
    return null;
  }
  
  protected static <T> T getFromList(List<T> paramList, int paramInt)
  {
    if ((paramList != null) && (paramInt >= 0) && (paramInt < paramList.size())) {
      return paramList.get(paramInt);
    }
    return null;
  }
  
  protected static <T> T getFromList(n.d<T> paramd, int paramInt)
  {
    if ((paramd != null) && (paramInt >= 0)) {
      return paramd.f(paramInt);
    }
    return null;
  }
  
  protected static boolean getFromList(SparseBooleanArray paramSparseBooleanArray, int paramInt)
  {
    if ((paramSparseBooleanArray != null) && (paramInt >= 0)) {
      return paramSparseBooleanArray.get(paramInt);
    }
    return false;
  }
  
  protected static <T extends ViewDataBinding> T inflateInternal(LayoutInflater paramLayoutInflater, int paramInt, ViewGroup paramViewGroup, boolean paramBoolean, Object paramObject)
  {
    return g.e(paramLayoutInflater, paramInt, paramViewGroup, paramBoolean, checkAndCastToBindingComponent(paramObject));
  }
  
  private static boolean isNumeric(String paramString, int paramInt)
  {
    int i = paramString.length();
    int j = paramInt;
    if (i == paramInt) {
      return false;
    }
    while (j < i)
    {
      if (!Character.isDigit(paramString.charAt(j))) {
        return false;
      }
      j++;
    }
    return true;
  }
  
  private static void mapBindings(f paramf, View paramView, Object[] paramArrayOfObject, i parami, SparseIntArray paramSparseIntArray, boolean paramBoolean)
  {
    if (getBinding(paramView) != null) {
      return;
    }
    Object localObject = paramView.getTag();
    if ((localObject instanceof String)) {
      localObject = (String)localObject;
    } else {
      localObject = null;
    }
    int i = 0;
    int j = 1;
    int m;
    if ((paramBoolean) && (localObject != null) && (((String)localObject).startsWith("layout")))
    {
      k = ((String)localObject).lastIndexOf('_');
      if (k > 0)
      {
        k++;
        if (isNumeric((String)localObject, k))
        {
          m = parseTagInt((String)localObject, k);
          k = j;
          if (paramArrayOfObject[m] != null) {
            break label172;
          }
          paramArrayOfObject[m] = paramView;
          k = j;
          break label172;
        }
      }
    }
    else if ((localObject != null) && (((String)localObject).startsWith("binding_")))
    {
      m = parseTagInt((String)localObject, BINDING_NUMBER_START);
      k = j;
      if (paramArrayOfObject[m] != null) {
        break label172;
      }
      paramArrayOfObject[m] = paramView;
      k = j;
      break label172;
    }
    int k = 0;
    label172:
    if (k == 0)
    {
      k = paramView.getId();
      if ((k > 0) && (paramSparseIntArray != null))
      {
        k = paramSparseIntArray.get(k, -1);
        if ((k >= 0) && (paramArrayOfObject[k] == null)) {
          paramArrayOfObject[k] = paramView;
        }
      }
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      j = paramView.getChildCount();
      for (k = i; k < j; k++) {
        mapBindings(paramf, paramView.getChildAt(k), paramArrayOfObject, parami, paramSparseIntArray, false);
      }
    }
  }
  
  protected static Object[] mapBindings(f paramf, View paramView, int paramInt, i parami, SparseIntArray paramSparseIntArray)
  {
    Object[] arrayOfObject = new Object[paramInt];
    mapBindings(paramf, paramView, arrayOfObject, parami, paramSparseIntArray, true);
    return arrayOfObject;
  }
  
  protected static Object[] mapBindings(f paramf, View[] paramArrayOfView, int paramInt, i parami, SparseIntArray paramSparseIntArray)
  {
    Object[] arrayOfObject = new Object[paramInt];
    for (paramInt = 0; paramInt < paramArrayOfView.length; paramInt++) {
      mapBindings(paramf, paramArrayOfView[paramInt], arrayOfObject, parami, paramSparseIntArray, true);
    }
    return arrayOfObject;
  }
  
  protected static byte parse(String paramString, byte paramByte)
  {
    try
    {
      byte b = Byte.parseByte(paramString);
      return b;
    }
    catch (NumberFormatException paramString) {}
    return paramByte;
  }
  
  protected static char parse(String paramString, char paramChar)
  {
    if ((paramString != null) && (!paramString.isEmpty())) {
      return paramString.charAt(0);
    }
    return paramChar;
  }
  
  protected static double parse(String paramString, double paramDouble)
  {
    try
    {
      double d = Double.parseDouble(paramString);
      return d;
    }
    catch (NumberFormatException paramString) {}
    return paramDouble;
  }
  
  protected static float parse(String paramString, float paramFloat)
  {
    try
    {
      float f = Float.parseFloat(paramString);
      return f;
    }
    catch (NumberFormatException paramString) {}
    return paramFloat;
  }
  
  protected static int parse(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  protected static long parse(String paramString, long paramLong)
  {
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return paramLong;
  }
  
  protected static short parse(String paramString, short paramShort)
  {
    try
    {
      short s = Short.parseShort(paramString);
      return s;
    }
    catch (NumberFormatException paramString) {}
    return paramShort;
  }
  
  protected static boolean parse(String paramString, boolean paramBoolean)
  {
    if (paramString == null) {
      return paramBoolean;
    }
    return Boolean.parseBoolean(paramString);
  }
  
  private static int parseTagInt(String paramString, int paramInt)
  {
    int i = paramString.length();
    int j = 0;
    while (paramInt < i)
    {
      j = j * 10 + (paramString.charAt(paramInt) - '0');
      paramInt++;
    }
    return j;
  }
  
  private static void processReferenceQueue()
  {
    for (;;)
    {
      Reference localReference = sReferenceQueue.poll();
      if (localReference == null) {
        break;
      }
      if ((localReference instanceof q)) {
        ((q)localReference).e();
      }
    }
  }
  
  protected static byte safeUnbox(Byte paramByte)
  {
    byte b1;
    byte b2;
    if (paramByte == null)
    {
      b1 = 0;
      b2 = b1;
    }
    else
    {
      b1 = paramByte.byteValue();
      b2 = b1;
    }
    return b2;
  }
  
  protected static char safeUnbox(Character paramCharacter)
  {
    char c1;
    char c2;
    if (paramCharacter == null)
    {
      c1 = '\000';
      c2 = c1;
    }
    else
    {
      c1 = paramCharacter.charValue();
      c2 = c1;
    }
    return c2;
  }
  
  protected static double safeUnbox(Double paramDouble)
  {
    double d;
    if (paramDouble == null) {
      d = 0.0D;
    } else {
      d = paramDouble.doubleValue();
    }
    return d;
  }
  
  protected static float safeUnbox(Float paramFloat)
  {
    float f;
    if (paramFloat == null) {
      f = 0.0F;
    } else {
      f = paramFloat.floatValue();
    }
    return f;
  }
  
  protected static int safeUnbox(Integer paramInteger)
  {
    int i;
    if (paramInteger == null) {
      i = 0;
    } else {
      i = paramInteger.intValue();
    }
    return i;
  }
  
  protected static long safeUnbox(Long paramLong)
  {
    long l;
    if (paramLong == null) {
      l = 0L;
    } else {
      l = paramLong.longValue();
    }
    return l;
  }
  
  protected static short safeUnbox(Short paramShort)
  {
    short s1;
    short s2;
    if (paramShort == null)
    {
      s1 = 0;
      s2 = s1;
    }
    else
    {
      s1 = paramShort.shortValue();
      s2 = s1;
    }
    return s2;
  }
  
  protected static boolean safeUnbox(Boolean paramBoolean)
  {
    boolean bool;
    if (paramBoolean == null) {
      bool = false;
    } else {
      bool = paramBoolean.booleanValue();
    }
    return bool;
  }
  
  protected static void setBindingInverseListener(ViewDataBinding paramViewDataBinding, h paramh, k paramk)
  {
    if (paramh != paramk)
    {
      if (paramh != null) {
        paramViewDataBinding.removeOnPropertyChangedCallback((k)paramh);
      }
      if (paramk != null) {
        paramViewDataBinding.addOnPropertyChangedCallback(paramk);
      }
    }
  }
  
  @TargetApi(16)
  protected static <T> void setTo(LongSparseArray<T> paramLongSparseArray, int paramInt, T paramT)
  {
    if ((paramLongSparseArray != null) && (paramInt >= 0) && (paramInt < paramLongSparseArray.size())) {
      paramLongSparseArray.put(paramInt, paramT);
    }
  }
  
  protected static <T> void setTo(SparseArray<T> paramSparseArray, int paramInt, T paramT)
  {
    if ((paramSparseArray != null) && (paramInt >= 0) && (paramInt < paramSparseArray.size())) {
      paramSparseArray.put(paramInt, paramT);
    }
  }
  
  protected static void setTo(SparseBooleanArray paramSparseBooleanArray, int paramInt, boolean paramBoolean)
  {
    if ((paramSparseBooleanArray != null) && (paramInt >= 0) && (paramInt < paramSparseBooleanArray.size())) {
      paramSparseBooleanArray.put(paramInt, paramBoolean);
    }
  }
  
  protected static void setTo(SparseIntArray paramSparseIntArray, int paramInt1, int paramInt2)
  {
    if ((paramSparseIntArray != null) && (paramInt1 >= 0) && (paramInt1 < paramSparseIntArray.size())) {
      paramSparseIntArray.put(paramInt1, paramInt2);
    }
  }
  
  @TargetApi(18)
  protected static void setTo(SparseLongArray paramSparseLongArray, int paramInt, long paramLong)
  {
    if ((paramSparseLongArray != null) && (paramInt >= 0) && (paramInt < paramSparseLongArray.size())) {
      paramSparseLongArray.put(paramInt, paramLong);
    }
  }
  
  protected static <T> void setTo(List<T> paramList, int paramInt, T paramT)
  {
    if ((paramList != null) && (paramInt >= 0) && (paramInt < paramList.size())) {
      paramList.set(paramInt, paramT);
    }
  }
  
  protected static <K, T> void setTo(Map<K, T> paramMap, K paramK, T paramT)
  {
    if (paramMap == null) {
      return;
    }
    paramMap.put(paramK, paramT);
  }
  
  protected static <T> void setTo(n.d<T> paramd, int paramInt, T paramT)
  {
    if ((paramd != null) && (paramInt >= 0) && (paramInt < paramd.p())) {
      paramd.l(paramInt, paramT);
    }
  }
  
  protected static void setTo(byte[] paramArrayOfByte, int paramInt, byte paramByte)
  {
    if ((paramArrayOfByte != null) && (paramInt >= 0) && (paramInt < paramArrayOfByte.length)) {
      paramArrayOfByte[paramInt] = ((byte)paramByte);
    }
  }
  
  protected static void setTo(char[] paramArrayOfChar, int paramInt, char paramChar)
  {
    if ((paramArrayOfChar != null) && (paramInt >= 0) && (paramInt < paramArrayOfChar.length)) {
      paramArrayOfChar[paramInt] = ((char)paramChar);
    }
  }
  
  protected static void setTo(double[] paramArrayOfDouble, int paramInt, double paramDouble)
  {
    if ((paramArrayOfDouble != null) && (paramInt >= 0) && (paramInt < paramArrayOfDouble.length)) {
      paramArrayOfDouble[paramInt] = paramDouble;
    }
  }
  
  protected static void setTo(float[] paramArrayOfFloat, int paramInt, float paramFloat)
  {
    if ((paramArrayOfFloat != null) && (paramInt >= 0) && (paramInt < paramArrayOfFloat.length)) {
      paramArrayOfFloat[paramInt] = paramFloat;
    }
  }
  
  protected static void setTo(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    if ((paramArrayOfInt != null) && (paramInt1 >= 0) && (paramInt1 < paramArrayOfInt.length)) {
      paramArrayOfInt[paramInt1] = paramInt2;
    }
  }
  
  protected static void setTo(long[] paramArrayOfLong, int paramInt, long paramLong)
  {
    if ((paramArrayOfLong != null) && (paramInt >= 0) && (paramInt < paramArrayOfLong.length)) {
      paramArrayOfLong[paramInt] = paramLong;
    }
  }
  
  protected static <T> void setTo(T[] paramArrayOfT, int paramInt, T paramT)
  {
    if ((paramArrayOfT != null) && (paramInt >= 0) && (paramInt < paramArrayOfT.length)) {
      paramArrayOfT[paramInt] = paramT;
    }
  }
  
  protected static void setTo(short[] paramArrayOfShort, int paramInt, short paramShort)
  {
    if ((paramArrayOfShort != null) && (paramInt >= 0) && (paramInt < paramArrayOfShort.length)) {
      paramArrayOfShort[paramInt] = ((short)paramShort);
    }
  }
  
  protected static void setTo(boolean[] paramArrayOfBoolean, int paramInt, boolean paramBoolean)
  {
    if ((paramArrayOfBoolean != null) && (paramInt >= 0) && (paramInt < paramArrayOfBoolean.length)) {
      paramArrayOfBoolean[paramInt] = paramBoolean;
    }
  }
  
  public void addOnRebindCallback(n paramn)
  {
    if (this.mRebindCallbacks == null) {
      this.mRebindCallbacks = new c(REBIND_NOTIFIER);
    }
    this.mRebindCallbacks.a(paramn);
  }
  
  protected void ensureBindingComponentIsNotNull(Class<?> paramClass)
  {
    if (this.mBindingComponent != null) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Required DataBindingComponent is null in class ");
    localStringBuilder.append(getClass().getSimpleName());
    localStringBuilder.append(". A BindingAdapter in ");
    localStringBuilder.append(paramClass.getCanonicalName());
    localStringBuilder.append(" is not static and requires an object to use, retrieved from the DataBindingComponent. If you don't use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static.");
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  protected abstract void executeBindings();
  
  public void executePendingBindings()
  {
    ViewDataBinding localViewDataBinding = this.mContainingBinding;
    if (localViewDataBinding == null) {
      executeBindingsInternal();
    } else {
      localViewDataBinding.executePendingBindings();
    }
  }
  
  void forceExecuteBindings()
  {
    executeBindings();
  }
  
  public androidx.lifecycle.n getLifecycleOwner()
  {
    return this.mLifecycleOwner;
  }
  
  protected Object getObservedField(int paramInt)
  {
    q localq = this.mLocalFieldObservers[paramInt];
    if (localq == null) {
      return null;
    }
    return localq.b();
  }
  
  public View getRoot()
  {
    return this.mRoot;
  }
  
  protected void handleFieldChange(int paramInt1, Object paramObject, int paramInt2)
  {
    if ((!this.mInLiveDataRegisterObserver) && (!this.mInStateFlowRegisterObserver) && (onFieldChange(paramInt1, paramObject, paramInt2))) {
      requestRebind();
    }
  }
  
  public abstract boolean hasPendingBindings();
  
  public abstract void invalidateAll();
  
  protected abstract boolean onFieldChange(int paramInt1, Object paramObject, int paramInt2);
  
  protected void registerTo(int paramInt, Object paramObject, d paramd)
  {
    if (paramObject == null) {
      return;
    }
    Object localObject1 = this.mLocalFieldObservers[paramInt];
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      paramd = paramd.a(this, paramInt, sReferenceQueue);
      this.mLocalFieldObservers[paramInt] = paramd;
      localObject1 = this.mLifecycleOwner;
      localObject2 = paramd;
      if (localObject1 != null)
      {
        paramd.c((androidx.lifecycle.n)localObject1);
        localObject2 = paramd;
      }
    }
    ((q)localObject2).d(paramObject);
  }
  
  public void removeOnRebindCallback(n paramn)
  {
    c localc = this.mRebindCallbacks;
    if (localc != null) {
      localc.k(paramn);
    }
  }
  
  protected void requestRebind()
  {
    Object localObject1 = this.mContainingBinding;
    if (localObject1 != null)
    {
      ((ViewDataBinding)localObject1).requestRebind();
    }
    else
    {
      localObject1 = this.mLifecycleOwner;
      if ((localObject1 != null) && (!((androidx.lifecycle.n)localObject1).getLifecycle().b().isAtLeast(Lifecycle.State.STARTED))) {
        return;
      }
    }
    try
    {
      if (this.mPendingRebind) {
        return;
      }
      this.mPendingRebind = true;
      if (USE_CHOREOGRAPHER) {
        this.mChoreographer.postFrameCallback(this.mFrameCallback);
      } else {
        this.mUIThreadHandler.post(this.mRebindRunnable);
      }
      return;
    }
    finally {}
  }
  
  protected void setContainedBinding(ViewDataBinding paramViewDataBinding)
  {
    if (paramViewDataBinding != null) {
      paramViewDataBinding.mContainingBinding = this;
    }
  }
  
  public void setLifecycleOwner(androidx.lifecycle.n paramn)
  {
    if ((paramn instanceof Fragment)) {
      Log.w("DataBinding", "Setting the fragment as the LifecycleOwner might cause memory leaks because views lives shorter than the Fragment. Consider using Fragment's view lifecycle");
    }
    Object localObject1 = this.mLifecycleOwner;
    if (localObject1 == paramn) {
      return;
    }
    if (localObject1 != null) {
      ((androidx.lifecycle.n)localObject1).getLifecycle().c(this.mOnStartListener);
    }
    this.mLifecycleOwner = paramn;
    if (paramn != null)
    {
      if (this.mOnStartListener == null) {
        this.mOnStartListener = new OnStartListener(this, null);
      }
      paramn.getLifecycle().a(this.mOnStartListener);
    }
    for (Object localObject2 : this.mLocalFieldObservers) {
      if (localObject2 != null) {
        localObject2.c(paramn);
      }
    }
  }
  
  protected void setRootTag(View paramView)
  {
    paramView.setTag(z.a.a, this);
  }
  
  protected void setRootTag(View[] paramArrayOfView)
  {
    int i = paramArrayOfView.length;
    for (int j = 0; j < i; j++) {
      paramArrayOfView[j].setTag(z.a.a, this);
    }
  }
  
  public abstract boolean setVariable(int paramInt, Object paramObject);
  
  public void unbind()
  {
    for (q localq : this.mLocalFieldObservers) {
      if (localq != null) {
        localq.e();
      }
    }
  }
  
  protected boolean unregisterFrom(int paramInt)
  {
    q localq = this.mLocalFieldObservers[paramInt];
    if (localq != null) {
      return localq.e();
    }
    return false;
  }
  
  protected boolean updateLiveDataRegistration(int paramInt, LiveData<?> paramLiveData)
  {
    this.mInLiveDataRegisterObserver = true;
    try
    {
      boolean bool = updateRegistration(paramInt, paramLiveData, CREATE_LIVE_DATA_LISTENER);
      return bool;
    }
    finally
    {
      this.mInLiveDataRegisterObserver = false;
    }
  }
  
  protected boolean updateRegistration(int paramInt, j paramj)
  {
    return updateRegistration(paramInt, paramj, CREATE_PROPERTY_LISTENER);
  }
  
  protected boolean updateRegistration(int paramInt, k paramk)
  {
    return updateRegistration(paramInt, paramk, CREATE_LIST_LISTENER);
  }
  
  protected boolean updateRegistration(int paramInt, l paraml)
  {
    return updateRegistration(paramInt, paraml, CREATE_MAP_LISTENER);
  }
  
  protected boolean updateRegistration(int paramInt, Object paramObject, d paramd)
  {
    if (paramObject == null) {
      return unregisterFrom(paramInt);
    }
    q localq = this.mLocalFieldObservers[paramInt];
    if (localq == null)
    {
      registerTo(paramInt, paramObject, paramd);
      return true;
    }
    if (localq.b() == paramObject) {
      return false;
    }
    unregisterFrom(paramInt);
    registerTo(paramInt, paramObject, paramd);
    return true;
  }
  
  static class OnStartListener
    implements androidx.lifecycle.m
  {
    final WeakReference<ViewDataBinding> a;
    
    private OnStartListener(ViewDataBinding paramViewDataBinding)
    {
      this.a = new WeakReference(paramViewDataBinding);
    }
    
    @w(Lifecycle.Event.ON_START)
    public void onStart()
    {
      ViewDataBinding localViewDataBinding = (ViewDataBinding)this.a.get();
      if (localViewDataBinding != null) {
        localViewDataBinding.executePendingBindings();
      }
    }
  }
  
  class a
    implements d
  {
    public q a(ViewDataBinding paramViewDataBinding, int paramInt, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
    {
      return new ViewDataBinding.n(paramViewDataBinding, paramInt, paramReferenceQueue).f();
    }
  }
  
  class b
    implements d
  {
    public q a(ViewDataBinding paramViewDataBinding, int paramInt, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
    {
      return new ViewDataBinding.l(paramViewDataBinding, paramInt, paramReferenceQueue).j();
    }
  }
  
  class c
    implements d
  {
    public q a(ViewDataBinding paramViewDataBinding, int paramInt, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
    {
      return new ViewDataBinding.m(paramViewDataBinding, paramInt, paramReferenceQueue).e();
    }
  }
  
  class d
    implements d
  {
    public q a(ViewDataBinding paramViewDataBinding, int paramInt, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
    {
      return new ViewDataBinding.j(paramViewDataBinding, paramInt, paramReferenceQueue).g();
    }
  }
  
  class e
    extends c.a<n, ViewDataBinding, Void>
  {
    public void b(n paramn, ViewDataBinding paramViewDataBinding, int paramInt, Void paramVoid)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt == 3) {
            paramn.a(paramViewDataBinding);
          }
        }
        else {
          paramn.b(paramViewDataBinding);
        }
      }
      else if (!paramn.c(paramViewDataBinding)) {
        ViewDataBinding.access$002(paramViewDataBinding, true);
      }
    }
  }
  
  class f
    implements View.OnAttachStateChangeListener
  {
    @TargetApi(19)
    public void onViewAttachedToWindow(View paramView)
    {
      ViewDataBinding.getBinding(paramView).mRebindRunnable.run();
      paramView.removeOnAttachStateChangeListener(this);
    }
    
    public void onViewDetachedFromWindow(View paramView) {}
  }
  
  class g
    implements Runnable
  {
    g() {}
    
    public void run()
    {
      try
      {
        ViewDataBinding.access$202(ViewDataBinding.this, false);
        ViewDataBinding.access$300();
        if (!ViewDataBinding.this.mRoot.isAttachedToWindow())
        {
          ViewDataBinding.this.mRoot.removeOnAttachStateChangeListener(ViewDataBinding.ROOT_REATTACHED_LISTENER);
          ViewDataBinding.this.mRoot.addOnAttachStateChangeListener(ViewDataBinding.ROOT_REATTACHED_LISTENER);
          return;
        }
        ViewDataBinding.this.executePendingBindings();
        return;
      }
      finally {}
    }
  }
  
  class h
    implements Choreographer.FrameCallback
  {
    h() {}
    
    public void doFrame(long paramLong)
    {
      ViewDataBinding.this.mRebindRunnable.run();
    }
  }
  
  protected static class i {}
  
  private static class j
    implements v, m<LiveData<?>>
  {
    final q<LiveData<?>> a;
    WeakReference<androidx.lifecycle.n> b = null;
    
    public j(ViewDataBinding paramViewDataBinding, int paramInt, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
    {
      this.a = new q(paramViewDataBinding, paramInt, this, paramReferenceQueue);
    }
    
    private androidx.lifecycle.n f()
    {
      WeakReference localWeakReference = this.b;
      if (localWeakReference == null) {
        return null;
      }
      return (androidx.lifecycle.n)localWeakReference.get();
    }
    
    public void a(androidx.lifecycle.n paramn)
    {
      androidx.lifecycle.n localn = f();
      LiveData localLiveData = (LiveData)this.a.b();
      if (localLiveData != null)
      {
        if (localn != null) {
          localLiveData.m(this);
        }
        if (paramn != null) {
          localLiveData.h(paramn, this);
        }
      }
      if (paramn != null) {
        this.b = new WeakReference(paramn);
      }
    }
    
    public void d(Object paramObject)
    {
      paramObject = this.a.a();
      if (paramObject != null)
      {
        q localq = this.a;
        paramObject.handleFieldChange(localq.b, localq.b(), 0);
      }
    }
    
    public void e(LiveData<?> paramLiveData)
    {
      androidx.lifecycle.n localn = f();
      if (localn != null) {
        paramLiveData.h(localn, this);
      }
    }
    
    public q<LiveData<?>> g()
    {
      return this.a;
    }
    
    public void h(LiveData<?> paramLiveData)
    {
      paramLiveData.m(this);
    }
  }
  
  protected static abstract class k
    extends j.a
    implements h
  {
    final int a;
    
    public void d(j paramj, int paramInt)
    {
      if ((paramInt == this.a) || (paramInt == 0)) {
        onChange();
      }
    }
  }
  
  private static class l
    extends k.a
    implements m<k>
  {
    final q<k> a;
    
    public l(ViewDataBinding paramViewDataBinding, int paramInt, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
    {
      this.a = new q(paramViewDataBinding, paramInt, this, paramReferenceQueue);
    }
    
    public void a(androidx.lifecycle.n paramn) {}
    
    public void d(k paramk)
    {
      ViewDataBinding localViewDataBinding = this.a.a();
      if (localViewDataBinding == null) {
        return;
      }
      k localk = (k)this.a.b();
      if (localk != paramk) {
        return;
      }
      localViewDataBinding.handleFieldChange(this.a.b, localk, 0);
    }
    
    public void e(k paramk, int paramInt1, int paramInt2)
    {
      d(paramk);
    }
    
    public void f(k paramk, int paramInt1, int paramInt2)
    {
      d(paramk);
    }
    
    public void g(k paramk, int paramInt1, int paramInt2, int paramInt3)
    {
      d(paramk);
    }
    
    public void h(k paramk, int paramInt1, int paramInt2)
    {
      d(paramk);
    }
    
    public void i(k paramk)
    {
      paramk.addOnListChangedCallback(this);
    }
    
    public q<k> j()
    {
      return this.a;
    }
    
    public void k(k paramk)
    {
      paramk.removeOnListChangedCallback(this);
    }
  }
  
  private static class m
    extends l.a
    implements m<l>
  {
    final q<l> a;
    
    public m(ViewDataBinding paramViewDataBinding, int paramInt, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
    {
      this.a = new q(paramViewDataBinding, paramInt, this, paramReferenceQueue);
    }
    
    public void a(androidx.lifecycle.n paramn) {}
    
    public void d(l paraml)
    {
      paraml.a(this);
    }
    
    public q<l> e()
    {
      return this.a;
    }
    
    public void f(l paraml)
    {
      paraml.b(this);
    }
  }
  
  private static class n
    extends j.a
    implements m<j>
  {
    final q<j> a;
    
    public n(ViewDataBinding paramViewDataBinding, int paramInt, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
    {
      this.a = new q(paramViewDataBinding, paramInt, this, paramReferenceQueue);
    }
    
    public void a(androidx.lifecycle.n paramn) {}
    
    public void d(j paramj, int paramInt)
    {
      ViewDataBinding localViewDataBinding = this.a.a();
      if (localViewDataBinding == null) {
        return;
      }
      if ((j)this.a.b() != paramj) {
        return;
      }
      localViewDataBinding.handleFieldChange(this.a.b, paramj, paramInt);
    }
    
    public void e(j paramj)
    {
      paramj.addOnPropertyChangedCallback(this);
    }
    
    public q<j> f()
    {
      return this.a;
    }
    
    public void g(j paramj)
    {
      paramj.removeOnPropertyChangedCallback(this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ViewDataBinding
 * JD-Core Version:    0.7.0.1
 */