package com.miui.calendar.search;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import db.e;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/c;", "Ldb/f;", "Landroid/content/Context;", "context", "Lkotlin/u;", "onAttach", "Landroidx/fragment/app/Fragment;", "childFragment", "onAttachFragment", "r", "Ldb/e;", "s", "q", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "i", "Landroid/content/Context;", "mContext", "Lcom/miui/calendar/search/SearchResultFragment;", "j", "Lcom/miui/calendar/search/SearchResultFragment;", "mSearchResultFragment", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class c
  extends db.f
{
  private Context i;
  private SearchResultFragment j;
  public Map<Integer, View> k;
  
  public void onAttach(Context paramContext)
  {
    r.f(paramContext, "context");
    super.onAttach(paramContext);
    this.i = paramContext;
  }
  
  public void onAttachFragment(Fragment paramFragment)
  {
    r.f(paramFragment, "childFragment");
    super.onAttachFragment(paramFragment);
    if ((paramFragment instanceof j))
    {
      j localj = (j)paramFragment;
      Context localContext = this.i;
      paramFragment = localContext;
      if (localContext == null)
      {
        r.x("mContext");
        paramFragment = null;
      }
      localj.l(paramFragment.getResources().getString(2131887413));
    }
    else if ((paramFragment instanceof SearchResultFragment))
    {
      ((SearchResultFragment)paramFragment).C(true);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    paramViewGroup = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (paramViewGroup != null) {
      paramLayoutInflater = (LinearLayout)paramViewGroup.findViewById(2131363106);
    } else {
      paramLayoutInflater = null;
    }
    if (paramLayoutInflater != null)
    {
      paramLayoutInflater.setBackground(requireContext().getDrawable(2131231076));
      paramLayoutInflater.setPadding(36, 0, 33, 0);
      paramLayoutInflater.setMinimumHeight((int)paramLayoutInflater.getContext().getResources().getDimension(2131165954));
      paramLayoutInflater.getLayoutParams().height = -2;
    }
    return paramViewGroup;
  }
  
  protected void q()
  {
    super.q();
    Object localObject = this.j;
    if (localObject != null)
    {
      localObject = ((SearchResultFragment)localObject).x();
      if (localObject != null) {
        ((f)localObject).h();
      }
    }
  }
  
  protected Fragment r()
  {
    j localj = new j();
    Context localContext1 = this.i;
    Context localContext2 = localContext1;
    if (localContext1 == null)
    {
      r.x("mContext");
      localContext2 = null;
    }
    localj.l(localContext2.getResources().getString(2131887413));
    return localj;
  }
  
  protected e s()
  {
    SearchResultFragment localSearchResultFragment = new SearchResultFragment();
    this.j = localSearchResultFragment;
    r.c(localSearchResultFragment);
    return localSearchResultFragment;
  }
  
  public void u()
  {
    this.k.clear();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.search.c
 * JD-Core Version:    0.7.0.1
 */