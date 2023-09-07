package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater.Factory2;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import d0.c;

class k
  implements LayoutInflater.Factory2
{
  final FragmentManager a;
  
  k(FragmentManager paramFragmentManager)
  {
    this.a = paramFragmentManager;
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, final AttributeSet paramAttributeSet)
  {
    if (g.class.getName().equals(paramString)) {
      return new g(paramContext, paramAttributeSet, this.a);
    }
    boolean bool = "fragment".equals(paramString);
    paramString = null;
    if (!bool) {
      return null;
    }
    Object localObject1 = paramAttributeSet.getAttributeValue(null, "class");
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, c.d);
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = localTypedArray.getString(c.e);
    }
    int i = localTypedArray.getResourceId(c.f, -1);
    String str = localTypedArray.getString(c.g);
    localTypedArray.recycle();
    if ((localObject2 != null) && (i.b(paramContext.getClassLoader(), (String)localObject2)))
    {
      int j;
      if (paramView != null) {
        j = paramView.getId();
      } else {
        j = 0;
      }
      if ((j == -1) && (i == -1) && (str == null))
      {
        paramView = new StringBuilder();
        paramView.append(paramAttributeSet.getPositionDescription());
        paramView.append(": Must specify unique android:id, android:tag, or have a parent with an id for ");
        paramView.append((String)localObject2);
        throw new IllegalArgumentException(paramView.toString());
      }
      if (i != -1) {
        paramString = this.a.h0(i);
      }
      localObject1 = paramString;
      if (paramString == null)
      {
        localObject1 = paramString;
        if (str != null) {
          localObject1 = this.a.i0(str);
        }
      }
      paramString = (String)localObject1;
      if (localObject1 == null)
      {
        paramString = (String)localObject1;
        if (j != -1) {
          paramString = this.a.h0(j);
        }
      }
      if (paramString == null)
      {
        paramString = this.a.s0().a(paramContext.getClassLoader(), (String)localObject2);
        paramString.mFromLayout = true;
        int k;
        if (i != 0) {
          k = i;
        } else {
          k = j;
        }
        paramString.mFragmentId = k;
        paramString.mContainerId = j;
        paramString.mTag = str;
        paramString.mInLayout = true;
        paramContext = this.a;
        paramString.mFragmentManager = paramContext;
        paramString.mHost = paramContext.v0();
        paramString.onInflate(this.a.v0().f(), paramAttributeSet, paramString.mSavedFragmentState);
        localObject1 = this.a.g(paramString);
        paramContext = paramString;
        paramAttributeSet = (AttributeSet)localObject1;
        if (FragmentManager.H0(2))
        {
          paramContext = new StringBuilder();
          paramContext.append("Fragment ");
          paramContext.append(paramString);
          paramContext.append(" has been inflated via the <fragment> tag: id=0x");
          paramContext.append(Integer.toHexString(i));
          Log.v("FragmentManager", paramContext.toString());
          paramContext = paramString;
          paramAttributeSet = (AttributeSet)localObject1;
        }
      }
      else
      {
        if (paramString.mInLayout) {
          break label713;
        }
        paramString.mInLayout = true;
        paramContext = this.a;
        paramString.mFragmentManager = paramContext;
        paramString.mHost = paramContext.v0();
        paramString.onInflate(this.a.v0().f(), paramAttributeSet, paramString.mSavedFragmentState);
        localObject1 = this.a.w(paramString);
        paramContext = paramString;
        paramAttributeSet = (AttributeSet)localObject1;
        if (FragmentManager.H0(2))
        {
          paramContext = new StringBuilder();
          paramContext.append("Retained Fragment ");
          paramContext.append(paramString);
          paramContext.append(" has been re-attached via the <fragment> tag: id=0x");
          paramContext.append(Integer.toHexString(i));
          Log.v("FragmentManager", paramContext.toString());
          paramAttributeSet = (AttributeSet)localObject1;
          paramContext = paramString;
        }
      }
      paramContext.mContainer = ((ViewGroup)paramView);
      paramAttributeSet.m();
      paramAttributeSet.j();
      paramView = paramContext.mView;
      if (paramView != null)
      {
        if (i != 0) {
          paramView.setId(i);
        }
        if (paramContext.mView.getTag() == null) {
          paramContext.mView.setTag(str);
        }
        paramContext.mView.addOnAttachStateChangeListener(new a(paramAttributeSet));
        return paramContext.mView;
      }
      paramView = new StringBuilder();
      paramView.append("Fragment ");
      paramView.append((String)localObject2);
      paramView.append(" did not create a view.");
      throw new IllegalStateException(paramView.toString());
      label713:
      paramView = new StringBuilder();
      paramView.append(paramAttributeSet.getPositionDescription());
      paramView.append(": Duplicate id 0x");
      paramView.append(Integer.toHexString(i));
      paramView.append(", tag ");
      paramView.append(str);
      paramView.append(", or parent id 0x");
      paramView.append(Integer.toHexString(j));
      paramView.append(" with another fragment for ");
      paramView.append((String)localObject2);
      throw new IllegalArgumentException(paramView.toString());
    }
    return null;
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  class a
    implements View.OnAttachStateChangeListener
  {
    a(q paramq) {}
    
    public void onViewAttachedToWindow(View paramView)
    {
      paramView = paramAttributeSet.k();
      paramAttributeSet.m();
      SpecialEffectsController.n((ViewGroup)paramView.mView.getParent(), k.this.a).j();
    }
    
    public void onViewDetachedFromWindow(View paramView) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.k
 * JD-Core Version:    0.7.0.1
 */