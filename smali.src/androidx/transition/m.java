package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.core.view.a0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import n.d;

public abstract class m
  implements Cloneable
{
  static final boolean DBG = false;
  private static final int[] DEFAULT_MATCH_ORDER = { 2, 1, 3, 4 };
  private static final String LOG_TAG = "Transition";
  private static final int MATCH_FIRST = 1;
  public static final int MATCH_ID = 3;
  private static final String MATCH_ID_STR = "id";
  public static final int MATCH_INSTANCE = 1;
  private static final String MATCH_INSTANCE_STR = "instance";
  public static final int MATCH_ITEM_ID = 4;
  private static final String MATCH_ITEM_ID_STR = "itemId";
  private static final int MATCH_LAST = 4;
  public static final int MATCH_NAME = 2;
  private static final String MATCH_NAME_STR = "name";
  private static final g STRAIGHT_PATH_MOTION = new a();
  private static ThreadLocal<n.a<Animator, d>> sRunningAnimators = new ThreadLocal();
  private ArrayList<Animator> mAnimators = new ArrayList();
  boolean mCanRemoveViews = false;
  ArrayList<Animator> mCurrentAnimators = new ArrayList();
  long mDuration = -1L;
  private u mEndValues = new u();
  private ArrayList<t> mEndValuesList;
  private boolean mEnded = false;
  private f mEpicenterCallback;
  private TimeInterpolator mInterpolator = null;
  private ArrayList<g> mListeners = null;
  private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
  private String mName = getClass().getName();
  private n.a<String, String> mNameOverrides;
  private int mNumInstances = 0;
  q mParent = null;
  private g mPathMotion = STRAIGHT_PATH_MOTION;
  private boolean mPaused = false;
  p mPropagation;
  private ViewGroup mSceneRoot = null;
  private long mStartDelay = -1L;
  private u mStartValues = new u();
  private ArrayList<t> mStartValuesList;
  private ArrayList<View> mTargetChildExcludes = null;
  private ArrayList<View> mTargetExcludes = null;
  private ArrayList<Integer> mTargetIdChildExcludes = null;
  private ArrayList<Integer> mTargetIdExcludes = null;
  ArrayList<Integer> mTargetIds = new ArrayList();
  private ArrayList<String> mTargetNameExcludes = null;
  private ArrayList<String> mTargetNames = null;
  private ArrayList<Class<?>> mTargetTypeChildExcludes = null;
  private ArrayList<Class<?>> mTargetTypeExcludes = null;
  private ArrayList<Class<?>> mTargetTypes = null;
  ArrayList<View> mTargets = new ArrayList();
  
  public m() {}
  
  @SuppressLint({"RestrictedApi"})
  public m(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, l.c);
    paramAttributeSet = (XmlResourceParser)paramAttributeSet;
    long l = androidx.core.content.res.l.k(localTypedArray, paramAttributeSet, "duration", 1, -1);
    if (l >= 0L) {
      setDuration(l);
    }
    l = androidx.core.content.res.l.k(localTypedArray, paramAttributeSet, "startDelay", 2, -1);
    if (l > 0L) {
      setStartDelay(l);
    }
    int i = androidx.core.content.res.l.l(localTypedArray, paramAttributeSet, "interpolator", 0, 0);
    if (i > 0) {
      setInterpolator(AnimationUtils.loadInterpolator(paramContext, i));
    }
    paramContext = androidx.core.content.res.l.m(localTypedArray, paramAttributeSet, "matchOrder", 3);
    if (paramContext != null) {
      setMatchOrder(parseMatchOrder(paramContext));
    }
    localTypedArray.recycle();
  }
  
  private void addUnmatched(n.a<View, t> parama1, n.a<View, t> parama2)
  {
    int i = 0;
    int k;
    for (int j = 0;; j++)
    {
      k = i;
      if (j >= parama1.size()) {
        break;
      }
      t localt = (t)parama1.p(j);
      if (isValidTarget(localt.b))
      {
        this.mStartValuesList.add(localt);
        this.mEndValuesList.add(null);
      }
    }
    while (k < parama2.size())
    {
      parama1 = (t)parama2.p(k);
      if (isValidTarget(parama1.b))
      {
        this.mEndValuesList.add(parama1);
        this.mStartValuesList.add(null);
      }
      k++;
    }
  }
  
  private static void addViewValues(u paramu, View paramView, t paramt)
  {
    paramu.a.put(paramView, paramt);
    int i = paramView.getId();
    if (i >= 0) {
      if (paramu.b.indexOfKey(i) >= 0) {
        paramu.b.put(i, null);
      } else {
        paramu.b.put(i, paramView);
      }
    }
    paramt = a0.H(paramView);
    if (paramt != null) {
      if (paramu.d.containsKey(paramt)) {
        paramu.d.put(paramt, null);
      } else {
        paramu.d.put(paramt, paramView);
      }
    }
    if ((paramView.getParent() instanceof ListView))
    {
      paramt = (ListView)paramView.getParent();
      if (paramt.getAdapter().hasStableIds())
      {
        long l = paramt.getItemIdAtPosition(paramt.getPositionForView(paramView));
        if (paramu.c.h(l) >= 0)
        {
          paramView = (View)paramu.c.f(l);
          if (paramView != null)
          {
            a0.v0(paramView, false);
            paramu.c.l(l, null);
          }
        }
        else
        {
          a0.v0(paramView, true);
          paramu.c.l(l, paramView);
        }
      }
    }
  }
  
  private static boolean alreadyContains(int[] paramArrayOfInt, int paramInt)
  {
    int i = paramArrayOfInt[paramInt];
    for (int j = 0; j < paramInt; j++) {
      if (paramArrayOfInt[j] == i) {
        return true;
      }
    }
    return false;
  }
  
  private void captureHierarchy(View paramView, boolean paramBoolean)
  {
    if (paramView == null) {
      return;
    }
    int i = paramView.getId();
    Object localObject = this.mTargetIdExcludes;
    if ((localObject != null) && (((ArrayList)localObject).contains(Integer.valueOf(i)))) {
      return;
    }
    localObject = this.mTargetExcludes;
    if ((localObject != null) && (((ArrayList)localObject).contains(paramView))) {
      return;
    }
    localObject = this.mTargetTypeExcludes;
    int j = 0;
    int m;
    if (localObject != null)
    {
      int k = ((ArrayList)localObject).size();
      for (m = 0; m < k; m++) {
        if (((Class)this.mTargetTypeExcludes.get(m)).isInstance(paramView)) {
          return;
        }
      }
    }
    if ((paramView.getParent() instanceof ViewGroup))
    {
      localObject = new t(paramView);
      if (paramBoolean) {
        captureStartValues((t)localObject);
      } else {
        captureEndValues((t)localObject);
      }
      ((t)localObject).c.add(this);
      capturePropagationValues((t)localObject);
      if (paramBoolean) {
        addViewValues(this.mStartValues, paramView, (t)localObject);
      } else {
        addViewValues(this.mEndValues, paramView, (t)localObject);
      }
    }
    if ((paramView instanceof ViewGroup))
    {
      localObject = this.mTargetIdChildExcludes;
      if ((localObject != null) && (((ArrayList)localObject).contains(Integer.valueOf(i)))) {
        return;
      }
      localObject = this.mTargetChildExcludes;
      if ((localObject != null) && (((ArrayList)localObject).contains(paramView))) {
        return;
      }
      localObject = this.mTargetTypeChildExcludes;
      if (localObject != null)
      {
        i = ((ArrayList)localObject).size();
        for (m = 0; m < i; m++) {
          if (((Class)this.mTargetTypeChildExcludes.get(m)).isInstance(paramView)) {
            return;
          }
        }
      }
      paramView = (ViewGroup)paramView;
      for (m = j; m < paramView.getChildCount(); m++) {
        captureHierarchy(paramView.getChildAt(m), paramBoolean);
      }
    }
  }
  
  private ArrayList<Integer> excludeId(ArrayList<Integer> paramArrayList, int paramInt, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramInt > 0) {
      if (paramBoolean) {
        localObject = e.a(paramArrayList, Integer.valueOf(paramInt));
      } else {
        localObject = e.b(paramArrayList, Integer.valueOf(paramInt));
      }
    }
    return localObject;
  }
  
  private static <T> ArrayList<T> excludeObject(ArrayList<T> paramArrayList, T paramT, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramT != null) {
      if (paramBoolean) {
        localObject = e.a(paramArrayList, paramT);
      } else {
        localObject = e.b(paramArrayList, paramT);
      }
    }
    return localObject;
  }
  
  private ArrayList<Class<?>> excludeType(ArrayList<Class<?>> paramArrayList, Class<?> paramClass, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramClass != null) {
      if (paramBoolean) {
        localObject = e.a(paramArrayList, paramClass);
      } else {
        localObject = e.b(paramArrayList, paramClass);
      }
    }
    return localObject;
  }
  
  private ArrayList<View> excludeView(ArrayList<View> paramArrayList, View paramView, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramView != null) {
      if (paramBoolean) {
        localObject = e.a(paramArrayList, paramView);
      } else {
        localObject = e.b(paramArrayList, paramView);
      }
    }
    return localObject;
  }
  
  private static n.a<Animator, d> getRunningAnimators()
  {
    n.a locala1 = (n.a)sRunningAnimators.get();
    n.a locala2 = locala1;
    if (locala1 == null)
    {
      locala2 = new n.a();
      sRunningAnimators.set(locala2);
    }
    return locala2;
  }
  
  private static boolean isValidMatch(int paramInt)
  {
    boolean bool = true;
    if ((paramInt < 1) || (paramInt > 4)) {
      bool = false;
    }
    return bool;
  }
  
  private static boolean isValueChanged(t paramt1, t paramt2, String paramString)
  {
    paramt1 = paramt1.a.get(paramString);
    paramt2 = paramt2.a.get(paramString);
    boolean bool1 = true;
    boolean bool2;
    if ((paramt1 == null) && (paramt2 == null))
    {
      bool2 = false;
    }
    else
    {
      bool2 = bool1;
      if (paramt1 != null) {
        if (paramt2 == null) {
          bool2 = bool1;
        } else {
          bool2 = true ^ paramt1.equals(paramt2);
        }
      }
    }
    return bool2;
  }
  
  private void matchIds(n.a<View, t> parama1, n.a<View, t> parama2, SparseArray<View> paramSparseArray1, SparseArray<View> paramSparseArray2)
  {
    int i = paramSparseArray1.size();
    for (int j = 0; j < i; j++)
    {
      View localView1 = (View)paramSparseArray1.valueAt(j);
      if ((localView1 != null) && (isValidTarget(localView1)))
      {
        View localView2 = (View)paramSparseArray2.get(paramSparseArray1.keyAt(j));
        if ((localView2 != null) && (isValidTarget(localView2)))
        {
          t localt1 = (t)parama1.get(localView1);
          t localt2 = (t)parama2.get(localView2);
          if ((localt1 != null) && (localt2 != null))
          {
            this.mStartValuesList.add(localt1);
            this.mEndValuesList.add(localt2);
            parama1.remove(localView1);
            parama2.remove(localView2);
          }
        }
      }
    }
  }
  
  private void matchInstances(n.a<View, t> parama1, n.a<View, t> parama2)
  {
    for (int i = parama1.size() - 1; i >= 0; i--)
    {
      Object localObject = (View)parama1.l(i);
      if ((localObject != null) && (isValidTarget((View)localObject)))
      {
        t localt = (t)parama2.remove(localObject);
        if ((localt != null) && (isValidTarget(localt.b)))
        {
          localObject = (t)parama1.n(i);
          this.mStartValuesList.add(localObject);
          this.mEndValuesList.add(localt);
        }
      }
    }
  }
  
  private void matchItemIds(n.a<View, t> parama1, n.a<View, t> parama2, d<View> paramd1, d<View> paramd2)
  {
    int i = paramd1.p();
    for (int j = 0; j < i; j++)
    {
      View localView1 = (View)paramd1.r(j);
      if ((localView1 != null) && (isValidTarget(localView1)))
      {
        View localView2 = (View)paramd2.f(paramd1.k(j));
        if ((localView2 != null) && (isValidTarget(localView2)))
        {
          t localt1 = (t)parama1.get(localView1);
          t localt2 = (t)parama2.get(localView2);
          if ((localt1 != null) && (localt2 != null))
          {
            this.mStartValuesList.add(localt1);
            this.mEndValuesList.add(localt2);
            parama1.remove(localView1);
            parama2.remove(localView2);
          }
        }
      }
    }
  }
  
  private void matchNames(n.a<View, t> parama1, n.a<View, t> parama2, n.a<String, View> parama3, n.a<String, View> parama4)
  {
    int i = parama3.size();
    for (int j = 0; j < i; j++)
    {
      View localView1 = (View)parama3.p(j);
      if ((localView1 != null) && (isValidTarget(localView1)))
      {
        View localView2 = (View)parama4.get(parama3.l(j));
        if ((localView2 != null) && (isValidTarget(localView2)))
        {
          t localt1 = (t)parama1.get(localView1);
          t localt2 = (t)parama2.get(localView2);
          if ((localt1 != null) && (localt2 != null))
          {
            this.mStartValuesList.add(localt1);
            this.mEndValuesList.add(localt2);
            parama1.remove(localView1);
            parama2.remove(localView2);
          }
        }
      }
    }
  }
  
  private void matchStartAndEnd(u paramu1, u paramu2)
  {
    n.a locala1 = new n.a(paramu1.a);
    n.a locala2 = new n.a(paramu2.a);
    for (int i = 0;; i++)
    {
      int[] arrayOfInt = this.mMatchOrder;
      if (i >= arrayOfInt.length) {
        break;
      }
      int j = arrayOfInt[i];
      if (j != 1)
      {
        if (j != 2)
        {
          if (j != 3)
          {
            if (j == 4) {
              matchItemIds(locala1, locala2, paramu1.c, paramu2.c);
            }
          }
          else {
            matchIds(locala1, locala2, paramu1.b, paramu2.b);
          }
        }
        else {
          matchNames(locala1, locala2, paramu1.d, paramu2.d);
        }
      }
      else {
        matchInstances(locala1, locala2);
      }
    }
    addUnmatched(locala1, locala2);
  }
  
  private static int[] parseMatchOrder(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ",");
    paramString = new int[localStringTokenizer.countTokens()];
    int i = 0;
    while (localStringTokenizer.hasMoreTokens())
    {
      Object localObject = localStringTokenizer.nextToken().trim();
      if ("id".equalsIgnoreCase((String)localObject))
      {
        paramString[i] = 3;
      }
      else if ("instance".equalsIgnoreCase((String)localObject))
      {
        paramString[i] = 1;
      }
      else if ("name".equalsIgnoreCase((String)localObject))
      {
        paramString[i] = 2;
      }
      else if ("itemId".equalsIgnoreCase((String)localObject))
      {
        paramString[i] = 4;
      }
      else
      {
        if (!((String)localObject).isEmpty()) {
          break label133;
        }
        localObject = new int[paramString.length - 1];
        System.arraycopy(paramString, 0, localObject, 0, i);
        i--;
        paramString = (String)localObject;
      }
      i++;
      continue;
      label133:
      paramString = new StringBuilder();
      paramString.append("Unknown match type in matchOrder: '");
      paramString.append((String)localObject);
      paramString.append("'");
      throw new InflateException(paramString.toString());
    }
    return paramString;
  }
  
  private void runAnimator(Animator paramAnimator, final n.a<Animator, d> parama)
  {
    if (paramAnimator != null)
    {
      paramAnimator.addListener(new b(parama));
      animate(paramAnimator);
    }
  }
  
  public m addListener(g paramg)
  {
    if (this.mListeners == null) {
      this.mListeners = new ArrayList();
    }
    this.mListeners.add(paramg);
    return this;
  }
  
  public m addTarget(int paramInt)
  {
    if (paramInt != 0) {
      this.mTargetIds.add(Integer.valueOf(paramInt));
    }
    return this;
  }
  
  public m addTarget(View paramView)
  {
    this.mTargets.add(paramView);
    return this;
  }
  
  public m addTarget(Class<?> paramClass)
  {
    if (this.mTargetTypes == null) {
      this.mTargetTypes = new ArrayList();
    }
    this.mTargetTypes.add(paramClass);
    return this;
  }
  
  public m addTarget(String paramString)
  {
    if (this.mTargetNames == null) {
      this.mTargetNames = new ArrayList();
    }
    this.mTargetNames.add(paramString);
    return this;
  }
  
  protected void animate(Animator paramAnimator)
  {
    if (paramAnimator == null)
    {
      end();
    }
    else
    {
      if (getDuration() >= 0L) {
        paramAnimator.setDuration(getDuration());
      }
      if (getStartDelay() >= 0L) {
        paramAnimator.setStartDelay(getStartDelay() + paramAnimator.getStartDelay());
      }
      if (getInterpolator() != null) {
        paramAnimator.setInterpolator(getInterpolator());
      }
      paramAnimator.addListener(new c());
      paramAnimator.start();
    }
  }
  
  protected void cancel()
  {
    for (int i = this.mCurrentAnimators.size() - 1; i >= 0; i--) {
      ((Animator)this.mCurrentAnimators.get(i)).cancel();
    }
    ArrayList localArrayList = this.mListeners;
    if ((localArrayList != null) && (localArrayList.size() > 0))
    {
      localArrayList = (ArrayList)this.mListeners.clone();
      int j = localArrayList.size();
      for (i = 0; i < j; i++) {
        ((g)localArrayList.get(i)).onTransitionCancel(this);
      }
    }
  }
  
  public abstract void captureEndValues(t paramt);
  
  void capturePropagationValues(t paramt) {}
  
  public abstract void captureStartValues(t paramt);
  
  void captureValues(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    clearValues(paramBoolean);
    int i = this.mTargetIds.size();
    int j = 0;
    Object localObject1;
    if ((i > 0) || (this.mTargets.size() > 0))
    {
      localObject1 = this.mTargetNames;
      if ((localObject1 == null) || (((ArrayList)localObject1).isEmpty()))
      {
        localObject1 = this.mTargetTypes;
        if ((localObject1 == null) || (((ArrayList)localObject1).isEmpty())) {
          break label80;
        }
      }
    }
    captureHierarchy(paramViewGroup, paramBoolean);
    break label299;
    label80:
    Object localObject2;
    for (i = 0; i < this.mTargetIds.size(); i++)
    {
      localObject1 = paramViewGroup.findViewById(((Integer)this.mTargetIds.get(i)).intValue());
      if (localObject1 != null)
      {
        localObject2 = new t((View)localObject1);
        if (paramBoolean) {
          captureStartValues((t)localObject2);
        } else {
          captureEndValues((t)localObject2);
        }
        ((t)localObject2).c.add(this);
        capturePropagationValues((t)localObject2);
        if (paramBoolean) {
          addViewValues(this.mStartValues, (View)localObject1, (t)localObject2);
        } else {
          addViewValues(this.mEndValues, (View)localObject1, (t)localObject2);
        }
      }
    }
    for (i = 0; i < this.mTargets.size(); i++)
    {
      localObject1 = (View)this.mTargets.get(i);
      paramViewGroup = new t((View)localObject1);
      if (paramBoolean) {
        captureStartValues(paramViewGroup);
      } else {
        captureEndValues(paramViewGroup);
      }
      paramViewGroup.c.add(this);
      capturePropagationValues(paramViewGroup);
      if (paramBoolean) {
        addViewValues(this.mStartValues, (View)localObject1, paramViewGroup);
      } else {
        addViewValues(this.mEndValues, (View)localObject1, paramViewGroup);
      }
    }
    label299:
    if (!paramBoolean)
    {
      paramViewGroup = this.mNameOverrides;
      if (paramViewGroup != null)
      {
        int k = paramViewGroup.size();
        paramViewGroup = new ArrayList(k);
        for (int m = 0;; m++)
        {
          i = j;
          if (m >= k) {
            break;
          }
          localObject1 = (String)this.mNameOverrides.l(m);
          paramViewGroup.add(this.mStartValues.d.remove(localObject1));
        }
        while (i < k)
        {
          localObject2 = (View)paramViewGroup.get(i);
          if (localObject2 != null)
          {
            localObject1 = (String)this.mNameOverrides.p(i);
            this.mStartValues.d.put(localObject1, localObject2);
          }
          i++;
        }
      }
    }
  }
  
  void clearValues(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mStartValues.a.clear();
      this.mStartValues.b.clear();
      this.mStartValues.c.a();
    }
    else
    {
      this.mEndValues.a.clear();
      this.mEndValues.b.clear();
      this.mEndValues.c.a();
    }
  }
  
  public m clone()
  {
    try
    {
      m localm = (m)super.clone();
      Object localObject = new java/util/ArrayList;
      ((ArrayList)localObject).<init>();
      localm.mAnimators = ((ArrayList)localObject);
      localObject = new androidx/transition/u;
      ((u)localObject).<init>();
      localm.mStartValues = ((u)localObject);
      localObject = new androidx/transition/u;
      ((u)localObject).<init>();
      localm.mEndValues = ((u)localObject);
      localm.mStartValuesList = null;
      localm.mEndValuesList = null;
      return localm;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, t paramt1, t paramt2)
  {
    return null;
  }
  
  protected void createAnimators(ViewGroup paramViewGroup, u paramu1, u paramu2, ArrayList<t> paramArrayList1, ArrayList<t> paramArrayList2)
  {
    n.a locala = getRunningAnimators();
    SparseIntArray localSparseIntArray = new SparseIntArray();
    int i = paramArrayList1.size();
    for (int j = 0; j < i; j++)
    {
      Object localObject1 = (t)paramArrayList1.get(j);
      paramu1 = (t)paramArrayList2.get(j);
      Object localObject2 = localObject1;
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (!((t)localObject1).c.contains(this)) {
          localObject2 = null;
        }
      }
      localObject1 = paramu1;
      if (paramu1 != null)
      {
        localObject1 = paramu1;
        if (!paramu1.c.contains(this)) {
          localObject1 = null;
        }
      }
      if ((localObject2 != null) || (localObject1 != null))
      {
        label395:
        do
        {
          int k;
          do
          {
            do
            {
              if ((localObject2 != null) && (localObject1 != null) && (!isTransitionRequired((t)localObject2, (t)localObject1))) {
                k = 0;
              } else {
                k = 1;
              }
            } while (k == 0);
            paramu1 = createAnimator(paramViewGroup, (t)localObject2, (t)localObject1);
          } while (paramu1 == null);
          if (localObject1 != null)
          {
            Object localObject3 = ((t)localObject1).b;
            localObject1 = getTransitionProperties();
            if ((localObject1 != null) && (localObject1.length > 0))
            {
              t localt1 = new t((View)localObject3);
              t localt2 = (t)paramu2.a.get(localObject3);
              localObject2 = paramu1;
              if (localt2 != null) {
                for (k = 0;; k++)
                {
                  localObject2 = paramu1;
                  if (k >= localObject1.length) {
                    break;
                  }
                  Map localMap = localt1.a;
                  localObject2 = localObject1[k];
                  localMap.put(localObject2, localt2.a.get(localObject2));
                }
              }
              int m = locala.size();
              for (k = 0; k < m; k++)
              {
                paramu1 = (d)locala.get((Animator)locala.l(k));
                if ((paramu1.c != null) && (paramu1.a == localObject3) && (paramu1.b.equals(getName())) && (paramu1.c.equals(localt1)))
                {
                  paramu1 = null;
                  localObject2 = localt1;
                  break label395;
                }
              }
              paramu1 = (u)localObject2;
              localObject2 = localt1;
            }
            else
            {
              localObject2 = null;
            }
            localObject1 = localObject3;
            localObject3 = localObject2;
            localObject2 = localObject1;
            localObject1 = localObject3;
          }
          else
          {
            localObject2 = ((t)localObject2).b;
            localObject1 = null;
          }
        } while (paramu1 == null);
        locala.put(paramu1, new d((View)localObject2, getName(), this, b0.d(paramViewGroup), (t)localObject1));
        this.mAnimators.add(paramu1);
      }
    }
    if (localSparseIntArray.size() != 0) {
      for (i = 0; i < localSparseIntArray.size(); i++)
      {
        j = localSparseIntArray.keyAt(i);
        paramViewGroup = (Animator)this.mAnimators.get(j);
        paramViewGroup.setStartDelay(localSparseIntArray.valueAt(i) - 9223372036854775807L + paramViewGroup.getStartDelay());
      }
    }
  }
  
  protected void end()
  {
    int i = this.mNumInstances - 1;
    this.mNumInstances = i;
    if (i == 0)
    {
      Object localObject = this.mListeners;
      if ((localObject != null) && (((ArrayList)localObject).size() > 0))
      {
        localObject = (ArrayList)this.mListeners.clone();
        int j = ((ArrayList)localObject).size();
        for (i = 0; i < j; i++) {
          ((g)((ArrayList)localObject).get(i)).onTransitionEnd(this);
        }
      }
      for (i = 0; i < this.mStartValues.c.p(); i++)
      {
        localObject = (View)this.mStartValues.c.r(i);
        if (localObject != null) {
          a0.v0((View)localObject, false);
        }
      }
      for (i = 0; i < this.mEndValues.c.p(); i++)
      {
        localObject = (View)this.mEndValues.c.r(i);
        if (localObject != null) {
          a0.v0((View)localObject, false);
        }
      }
      this.mEnded = true;
    }
  }
  
  public m excludeChildren(int paramInt, boolean paramBoolean)
  {
    this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, paramInt, paramBoolean);
    return this;
  }
  
  public m excludeChildren(View paramView, boolean paramBoolean)
  {
    this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, paramView, paramBoolean);
    return this;
  }
  
  public m excludeChildren(Class<?> paramClass, boolean paramBoolean)
  {
    this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, paramClass, paramBoolean);
    return this;
  }
  
  public m excludeTarget(int paramInt, boolean paramBoolean)
  {
    this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, paramInt, paramBoolean);
    return this;
  }
  
  public m excludeTarget(View paramView, boolean paramBoolean)
  {
    this.mTargetExcludes = excludeView(this.mTargetExcludes, paramView, paramBoolean);
    return this;
  }
  
  public m excludeTarget(Class<?> paramClass, boolean paramBoolean)
  {
    this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, paramClass, paramBoolean);
    return this;
  }
  
  public m excludeTarget(String paramString, boolean paramBoolean)
  {
    this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, paramString, paramBoolean);
    return this;
  }
  
  void forceToEnd(ViewGroup paramViewGroup)
  {
    Object localObject = getRunningAnimators();
    int i = ((n.g)localObject).size();
    if ((paramViewGroup != null) && (i != 0))
    {
      paramViewGroup = b0.d(paramViewGroup);
      n.a locala = new n.a((n.g)localObject);
      ((n.g)localObject).clear();
      i--;
      while (i >= 0)
      {
        localObject = (d)locala.p(i);
        if ((((d)localObject).a != null) && (paramViewGroup != null) && (paramViewGroup.equals(((d)localObject).d))) {
          ((Animator)locala.l(i)).end();
        }
        i--;
      }
    }
  }
  
  public long getDuration()
  {
    return this.mDuration;
  }
  
  public Rect getEpicenter()
  {
    f localf = this.mEpicenterCallback;
    if (localf == null) {
      return null;
    }
    return localf.a(this);
  }
  
  public f getEpicenterCallback()
  {
    return this.mEpicenterCallback;
  }
  
  public TimeInterpolator getInterpolator()
  {
    return this.mInterpolator;
  }
  
  t getMatchedTransitionValues(View paramView, boolean paramBoolean)
  {
    Object localObject1 = this.mParent;
    if (localObject1 != null) {
      return ((m)localObject1).getMatchedTransitionValues(paramView, paramBoolean);
    }
    if (paramBoolean) {
      localObject1 = this.mStartValuesList;
    } else {
      localObject1 = this.mEndValuesList;
    }
    Object localObject2 = null;
    if (localObject1 == null) {
      return null;
    }
    int i = ((ArrayList)localObject1).size();
    int j = -1;
    int m;
    for (int k = 0;; k++)
    {
      m = j;
      if (k >= i) {
        break;
      }
      t localt = (t)((ArrayList)localObject1).get(k);
      if (localt == null) {
        return null;
      }
      if (localt.b == paramView)
      {
        m = k;
        break;
      }
    }
    paramView = localObject2;
    if (m >= 0)
    {
      if (paramBoolean) {
        paramView = this.mEndValuesList;
      } else {
        paramView = this.mStartValuesList;
      }
      paramView = (t)paramView.get(m);
    }
    return paramView;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public g getPathMotion()
  {
    return this.mPathMotion;
  }
  
  public p getPropagation()
  {
    return null;
  }
  
  public long getStartDelay()
  {
    return this.mStartDelay;
  }
  
  public List<Integer> getTargetIds()
  {
    return this.mTargetIds;
  }
  
  public List<String> getTargetNames()
  {
    return this.mTargetNames;
  }
  
  public List<Class<?>> getTargetTypes()
  {
    return this.mTargetTypes;
  }
  
  public List<View> getTargets()
  {
    return this.mTargets;
  }
  
  public String[] getTransitionProperties()
  {
    return null;
  }
  
  public t getTransitionValues(View paramView, boolean paramBoolean)
  {
    Object localObject = this.mParent;
    if (localObject != null) {
      return ((m)localObject).getTransitionValues(paramView, paramBoolean);
    }
    if (paramBoolean) {
      localObject = this.mStartValues;
    } else {
      localObject = this.mEndValues;
    }
    return (t)((u)localObject).a.get(paramView);
  }
  
  public boolean isTransitionRequired(t paramt1, t paramt2)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramt1 != null)
    {
      bool2 = bool1;
      if (paramt2 != null)
      {
        Object localObject = getTransitionProperties();
        if (localObject != null)
        {
          int i = localObject.length;
          for (int j = 0;; j++)
          {
            bool2 = bool1;
            if (j >= i) {
              break label117;
            }
            if (isValueChanged(paramt1, paramt2, localObject[j])) {
              break;
            }
          }
        }
        localObject = paramt1.a.keySet().iterator();
        do
        {
          bool2 = bool1;
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
        } while (!isValueChanged(paramt1, paramt2, (String)((Iterator)localObject).next()));
        bool2 = true;
      }
    }
    label117:
    return bool2;
  }
  
  boolean isValidTarget(View paramView)
  {
    int i = paramView.getId();
    ArrayList localArrayList = this.mTargetIdExcludes;
    if ((localArrayList != null) && (localArrayList.contains(Integer.valueOf(i)))) {
      return false;
    }
    localArrayList = this.mTargetExcludes;
    if ((localArrayList != null) && (localArrayList.contains(paramView))) {
      return false;
    }
    localArrayList = this.mTargetTypeExcludes;
    int k;
    if (localArrayList != null)
    {
      int j = localArrayList.size();
      for (k = 0; k < j; k++) {
        if (((Class)this.mTargetTypeExcludes.get(k)).isInstance(paramView)) {
          return false;
        }
      }
    }
    if ((this.mTargetNameExcludes != null) && (a0.H(paramView) != null) && (this.mTargetNameExcludes.contains(a0.H(paramView)))) {
      return false;
    }
    if ((this.mTargetIds.size() == 0) && (this.mTargets.size() == 0))
    {
      localArrayList = this.mTargetTypes;
      if ((localArrayList == null) || (localArrayList.isEmpty()))
      {
        localArrayList = this.mTargetNames;
        if ((localArrayList == null) || (localArrayList.isEmpty())) {
          return true;
        }
      }
    }
    if ((!this.mTargetIds.contains(Integer.valueOf(i))) && (!this.mTargets.contains(paramView)))
    {
      localArrayList = this.mTargetNames;
      if ((localArrayList != null) && (localArrayList.contains(a0.H(paramView)))) {
        return true;
      }
      if (this.mTargetTypes != null) {
        for (k = 0; k < this.mTargetTypes.size(); k++) {
          if (((Class)this.mTargetTypes.get(k)).isInstance(paramView)) {
            return true;
          }
        }
      }
      return false;
    }
    return true;
  }
  
  public void pause(View paramView)
  {
    if (!this.mEnded)
    {
      n.a locala = getRunningAnimators();
      int i = locala.size();
      paramView = b0.d(paramView);
      i--;
      while (i >= 0)
      {
        d locald = (d)locala.p(i);
        if ((locald.a != null) && (paramView.equals(locald.d))) {
          a.b((Animator)locala.l(i));
        }
        i--;
      }
      paramView = this.mListeners;
      if ((paramView != null) && (paramView.size() > 0))
      {
        paramView = (ArrayList)this.mListeners.clone();
        int j = paramView.size();
        for (i = 0; i < j; i++) {
          ((g)paramView.get(i)).onTransitionPause(this);
        }
      }
      this.mPaused = true;
    }
  }
  
  void playTransition(ViewGroup paramViewGroup)
  {
    this.mStartValuesList = new ArrayList();
    this.mEndValuesList = new ArrayList();
    matchStartAndEnd(this.mStartValues, this.mEndValues);
    n.a locala = getRunningAnimators();
    int i = locala.size();
    q0 localq0 = b0.d(paramViewGroup);
    i--;
    while (i >= 0)
    {
      Animator localAnimator = (Animator)locala.l(i);
      if (localAnimator != null)
      {
        d locald = (d)locala.get(localAnimator);
        if ((locald != null) && (locald.a != null) && (localq0.equals(locald.d)))
        {
          t localt1 = locald.c;
          View localView = locald.a;
          t localt2 = getTransitionValues(localView, true);
          t localt3 = getMatchedTransitionValues(localView, true);
          t localt4 = localt3;
          if (localt2 == null)
          {
            localt4 = localt3;
            if (localt3 == null) {
              localt4 = (t)this.mEndValues.a.get(localView);
            }
          }
          int j;
          if (((localt2 != null) || (localt4 != null)) && (locald.e.isTransitionRequired(localt1, localt4))) {
            j = 1;
          } else {
            j = 0;
          }
          if (j != 0) {
            if ((!localAnimator.isRunning()) && (!localAnimator.isStarted())) {
              locala.remove(localAnimator);
            } else {
              localAnimator.cancel();
            }
          }
        }
      }
      i--;
    }
    createAnimators(paramViewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
    runAnimators();
  }
  
  public m removeListener(g paramg)
  {
    ArrayList localArrayList = this.mListeners;
    if (localArrayList == null) {
      return this;
    }
    localArrayList.remove(paramg);
    if (this.mListeners.size() == 0) {
      this.mListeners = null;
    }
    return this;
  }
  
  public m removeTarget(int paramInt)
  {
    if (paramInt != 0) {
      this.mTargetIds.remove(Integer.valueOf(paramInt));
    }
    return this;
  }
  
  public m removeTarget(View paramView)
  {
    this.mTargets.remove(paramView);
    return this;
  }
  
  public m removeTarget(Class<?> paramClass)
  {
    ArrayList localArrayList = this.mTargetTypes;
    if (localArrayList != null) {
      localArrayList.remove(paramClass);
    }
    return this;
  }
  
  public m removeTarget(String paramString)
  {
    ArrayList localArrayList = this.mTargetNames;
    if (localArrayList != null) {
      localArrayList.remove(paramString);
    }
    return this;
  }
  
  public void resume(View paramView)
  {
    if (this.mPaused)
    {
      if (!this.mEnded)
      {
        n.a locala = getRunningAnimators();
        int i = locala.size();
        paramView = b0.d(paramView);
        i--;
        while (i >= 0)
        {
          d locald = (d)locala.p(i);
          if ((locald.a != null) && (paramView.equals(locald.d))) {
            a.c((Animator)locala.l(i));
          }
          i--;
        }
        paramView = this.mListeners;
        if ((paramView != null) && (paramView.size() > 0))
        {
          paramView = (ArrayList)this.mListeners.clone();
          int j = paramView.size();
          for (i = 0; i < j; i++) {
            ((g)paramView.get(i)).onTransitionResume(this);
          }
        }
      }
      this.mPaused = false;
    }
  }
  
  protected void runAnimators()
  {
    start();
    n.a locala = getRunningAnimators();
    Iterator localIterator = this.mAnimators.iterator();
    while (localIterator.hasNext())
    {
      Animator localAnimator = (Animator)localIterator.next();
      if (locala.containsKey(localAnimator))
      {
        start();
        runAnimator(localAnimator, locala);
      }
    }
    this.mAnimators.clear();
    end();
  }
  
  void setCanRemoveViews(boolean paramBoolean)
  {
    this.mCanRemoveViews = paramBoolean;
  }
  
  public m setDuration(long paramLong)
  {
    this.mDuration = paramLong;
    return this;
  }
  
  public void setEpicenterCallback(f paramf)
  {
    this.mEpicenterCallback = paramf;
  }
  
  public m setInterpolator(TimeInterpolator paramTimeInterpolator)
  {
    this.mInterpolator = paramTimeInterpolator;
    return this;
  }
  
  public void setMatchOrder(int... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length != 0))
    {
      int i = 0;
      while (i < paramVarArgs.length) {
        if (isValidMatch(paramVarArgs[i]))
        {
          if (!alreadyContains(paramVarArgs, i)) {
            i++;
          } else {
            throw new IllegalArgumentException("matches contains a duplicate value");
          }
        }
        else {
          throw new IllegalArgumentException("matches contains invalid value");
        }
      }
      this.mMatchOrder = ((int[])paramVarArgs.clone());
    }
    else
    {
      this.mMatchOrder = DEFAULT_MATCH_ORDER;
    }
  }
  
  public void setPathMotion(g paramg)
  {
    if (paramg == null) {
      this.mPathMotion = STRAIGHT_PATH_MOTION;
    } else {
      this.mPathMotion = paramg;
    }
  }
  
  public void setPropagation(p paramp) {}
  
  m setSceneRoot(ViewGroup paramViewGroup)
  {
    this.mSceneRoot = paramViewGroup;
    return this;
  }
  
  public m setStartDelay(long paramLong)
  {
    this.mStartDelay = paramLong;
    return this;
  }
  
  protected void start()
  {
    if (this.mNumInstances == 0)
    {
      ArrayList localArrayList = this.mListeners;
      if ((localArrayList != null) && (localArrayList.size() > 0))
      {
        localArrayList = (ArrayList)this.mListeners.clone();
        int i = localArrayList.size();
        for (int j = 0; j < i; j++) {
          ((g)localArrayList.get(j)).onTransitionStart(this);
        }
      }
      this.mEnded = false;
    }
    this.mNumInstances += 1;
  }
  
  public String toString()
  {
    return toString("");
  }
  
  String toString(String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(getClass().getSimpleName());
    ((StringBuilder)localObject).append("@");
    ((StringBuilder)localObject).append(Integer.toHexString(hashCode()));
    ((StringBuilder)localObject).append(": ");
    localObject = ((StringBuilder)localObject).toString();
    paramString = (String)localObject;
    if (this.mDuration != -1L)
    {
      paramString = new StringBuilder();
      paramString.append((String)localObject);
      paramString.append("dur(");
      paramString.append(this.mDuration);
      paramString.append(") ");
      paramString = paramString.toString();
    }
    localObject = paramString;
    if (this.mStartDelay != -1L)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append("dly(");
      ((StringBuilder)localObject).append(this.mStartDelay);
      ((StringBuilder)localObject).append(") ");
      localObject = ((StringBuilder)localObject).toString();
    }
    paramString = (String)localObject;
    if (this.mInterpolator != null)
    {
      paramString = new StringBuilder();
      paramString.append((String)localObject);
      paramString.append("interp(");
      paramString.append(this.mInterpolator);
      paramString.append(") ");
      paramString = paramString.toString();
    }
    if (this.mTargetIds.size() <= 0)
    {
      localObject = paramString;
      if (this.mTargets.size() <= 0) {}
    }
    else
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append("tgts(");
      localObject = ((StringBuilder)localObject).toString();
      int i = this.mTargetIds.size();
      int j = 0;
      paramString = (String)localObject;
      if (i > 0) {
        for (i = 0;; i++)
        {
          paramString = (String)localObject;
          if (i >= this.mTargetIds.size()) {
            break;
          }
          paramString = (String)localObject;
          if (i > 0)
          {
            paramString = new StringBuilder();
            paramString.append((String)localObject);
            paramString.append(", ");
            paramString = paramString.toString();
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append(paramString);
          ((StringBuilder)localObject).append(this.mTargetIds.get(i));
          localObject = ((StringBuilder)localObject).toString();
        }
      }
      localObject = paramString;
      if (this.mTargets.size() > 0) {
        for (i = j;; i++)
        {
          localObject = paramString;
          if (i >= this.mTargets.size()) {
            break;
          }
          localObject = paramString;
          if (i > 0)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append(paramString);
            ((StringBuilder)localObject).append(", ");
            localObject = ((StringBuilder)localObject).toString();
          }
          paramString = new StringBuilder();
          paramString.append((String)localObject);
          paramString.append(this.mTargets.get(i));
          paramString = paramString.toString();
        }
      }
      paramString = new StringBuilder();
      paramString.append((String)localObject);
      paramString.append(")");
      localObject = paramString.toString();
    }
    return localObject;
  }
  
  static final class a
    extends g
  {
    public Path getPath(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      Path localPath = new Path();
      localPath.moveTo(paramFloat1, paramFloat2);
      localPath.lineTo(paramFloat3, paramFloat4);
      return localPath;
    }
  }
  
  class b
    extends AnimatorListenerAdapter
  {
    b(n.a parama) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      parama.remove(paramAnimator);
      m.this.mCurrentAnimators.remove(paramAnimator);
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      m.this.mCurrentAnimators.add(paramAnimator);
    }
  }
  
  class c
    extends AnimatorListenerAdapter
  {
    c() {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      m.this.end();
      paramAnimator.removeListener(this);
    }
  }
  
  private static class d
  {
    View a;
    String b;
    t c;
    q0 d;
    m e;
    
    d(View paramView, String paramString, m paramm, q0 paramq0, t paramt)
    {
      this.a = paramView;
      this.b = paramString;
      this.c = paramt;
      this.d = paramq0;
      this.e = paramm;
    }
  }
  
  private static class e
  {
    static <T> ArrayList<T> a(ArrayList<T> paramArrayList, T paramT)
    {
      Object localObject = paramArrayList;
      if (paramArrayList == null) {
        localObject = new ArrayList();
      }
      if (!((ArrayList)localObject).contains(paramT)) {
        ((ArrayList)localObject).add(paramT);
      }
      return localObject;
    }
    
    static <T> ArrayList<T> b(ArrayList<T> paramArrayList, T paramT)
    {
      ArrayList<T> localArrayList = paramArrayList;
      if (paramArrayList != null)
      {
        paramArrayList.remove(paramT);
        localArrayList = paramArrayList;
        if (paramArrayList.isEmpty()) {
          localArrayList = null;
        }
      }
      return localArrayList;
    }
  }
  
  public static abstract class f
  {
    public abstract Rect a(m paramm);
  }
  
  public static abstract interface g
  {
    public abstract void onTransitionCancel(m paramm);
    
    public abstract void onTransitionEnd(m paramm);
    
    public abstract void onTransitionPause(m paramm);
    
    public abstract void onTransitionResume(m paramm);
    
    public abstract void onTransitionStart(m paramm);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.m
 * JD-Core Version:    0.7.0.1
 */