package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.BaseBundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import d.f;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import x.c;

class t0
  extends c
  implements View.OnClickListener
{
  private int D = -1;
  private int E = -1;
  private final SearchView l;
  private final SearchableInfo m;
  private final Context n;
  private final WeakHashMap<String, Drawable.ConstantState> o;
  private final int p;
  private boolean q = false;
  private int r = 1;
  private ColorStateList v;
  private int w = -1;
  private int x = -1;
  private int y = -1;
  private int z = -1;
  
  public t0(Context paramContext, SearchView paramSearchView, SearchableInfo paramSearchableInfo, WeakHashMap<String, Drawable.ConstantState> paramWeakHashMap)
  {
    super(paramContext, paramSearchView.getSuggestionRowLayout(), null, true);
    this.l = paramSearchView;
    this.m = paramSearchableInfo;
    this.p = paramSearchView.getSuggestionCommitIconResId();
    this.n = paramContext;
    this.o = paramWeakHashMap;
  }
  
  private void A(Cursor paramCursor)
  {
    if (paramCursor != null) {
      paramCursor = paramCursor.getExtras();
    } else {
      paramCursor = null;
    }
    if (paramCursor != null) {
      paramCursor.getBoolean("in_progress");
    }
  }
  
  private Drawable j(String paramString)
  {
    paramString = (Drawable.ConstantState)this.o.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.newDrawable();
  }
  
  private CharSequence k(CharSequence paramCharSequence)
  {
    if (this.v == null)
    {
      localObject = new TypedValue();
      this.n.getTheme().resolveAttribute(d.a.N, (TypedValue)localObject, true);
      this.v = this.n.getResources().getColorStateList(((TypedValue)localObject).resourceId);
    }
    Object localObject = new SpannableString(paramCharSequence);
    ((SpannableString)localObject).setSpan(new TextAppearanceSpan(null, 0, 0, this.v, null), 0, paramCharSequence.length(), 33);
    return localObject;
  }
  
  private Drawable l(ComponentName paramComponentName)
  {
    Object localObject = this.n.getPackageManager();
    try
    {
      ActivityInfo localActivityInfo = ((PackageManager)localObject).getActivityInfo(paramComponentName, 128);
      int i = localActivityInfo.getIconResource();
      if (i == 0) {
        return null;
      }
      localObject = ((PackageManager)localObject).getDrawable(paramComponentName.getPackageName(), i, localActivityInfo.applicationInfo);
      if (localObject == null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Invalid icon resource ");
        ((StringBuilder)localObject).append(i);
        ((StringBuilder)localObject).append(" for ");
        ((StringBuilder)localObject).append(paramComponentName.flattenToShortString());
        Log.w("SuggestionsAdapter", ((StringBuilder)localObject).toString());
        return null;
      }
      return localObject;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.w("SuggestionsAdapter", paramComponentName.toString());
    }
    return null;
  }
  
  private Drawable m(ComponentName paramComponentName)
  {
    String str = paramComponentName.flattenToShortString();
    boolean bool = this.o.containsKey(str);
    Object localObject = null;
    Drawable localDrawable = null;
    if (bool)
    {
      paramComponentName = (Drawable.ConstantState)this.o.get(str);
      if (paramComponentName == null) {
        paramComponentName = localDrawable;
      } else {
        paramComponentName = paramComponentName.newDrawable(this.n.getResources());
      }
      return paramComponentName;
    }
    localDrawable = l(paramComponentName);
    if (localDrawable == null) {
      paramComponentName = localObject;
    } else {
      paramComponentName = localDrawable.getConstantState();
    }
    this.o.put(str, paramComponentName);
    return localDrawable;
  }
  
  public static String n(Cursor paramCursor, String paramString)
  {
    return v(paramCursor, paramCursor.getColumnIndex(paramString));
  }
  
  private Drawable o()
  {
    Drawable localDrawable = m(this.m.getSearchActivity());
    if (localDrawable != null) {
      return localDrawable;
    }
    return this.n.getPackageManager().getDefaultActivityIcon();
  }
  
  private Drawable p(Uri paramUri)
  {
    try
    {
      boolean bool = "android.resource".equals(paramUri.getScheme());
      Object localObject1;
      if (bool) {
        try
        {
          Drawable localDrawable = q(paramUri);
          return localDrawable;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          localObject1 = new java/io/FileNotFoundException;
          localObject4 = new java/lang/StringBuilder;
          ((StringBuilder)localObject4).<init>();
          ((StringBuilder)localObject4).append("Resource does not exist: ");
          ((StringBuilder)localObject4).append(paramUri);
          ((FileNotFoundException)localObject1).<init>(((StringBuilder)localObject4).toString());
          throw ((Throwable)localObject1);
        }
      }
      Object localObject4 = this.n.getContentResolver().openInputStream(paramUri);
      if (localObject4 != null) {
        try
        {
          localObject1 = Drawable.createFromStream((InputStream)localObject4, null);
          return localObject1;
        }
        finally
        {
          try
          {
            ((InputStream)localObject4).close();
          }
          catch (IOException localIOException2)
          {
            localObject4 = new java/lang/StringBuilder;
            ((StringBuilder)localObject4).<init>();
            ((StringBuilder)localObject4).append("Error closing icon stream for ");
            ((StringBuilder)localObject4).append(paramUri);
            Log.e("SuggestionsAdapter", ((StringBuilder)localObject4).toString(), localIOException2);
          }
        }
      }
      localObject3 = new java/io/FileNotFoundException;
      localObject4 = new java/lang/StringBuilder;
      ((StringBuilder)localObject4).<init>();
      ((StringBuilder)localObject4).append("Failed to open ");
      ((StringBuilder)localObject4).append(paramUri);
      ((FileNotFoundException)localObject3).<init>(((StringBuilder)localObject4).toString());
      throw ((Throwable)localObject3);
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Object localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("Icon not found: ");
      ((StringBuilder)localObject3).append(paramUri);
      ((StringBuilder)localObject3).append(", ");
      ((StringBuilder)localObject3).append(localFileNotFoundException.getMessage());
      Log.w("SuggestionsAdapter", ((StringBuilder)localObject3).toString());
    }
    return null;
  }
  
  private Drawable r(String paramString)
  {
    Drawable localDrawable1 = null;
    Object localObject = localDrawable1;
    Drawable localDrawable2;
    if (paramString != null)
    {
      localObject = localDrawable1;
      if (!paramString.isEmpty()) {
        if ("0".equals(paramString)) {
          localObject = localDrawable1;
        } else {
          try
          {
            int i = Integer.parseInt(paramString);
            localObject = new java/lang/StringBuilder;
            ((StringBuilder)localObject).<init>();
            ((StringBuilder)localObject).append("android.resource://");
            ((StringBuilder)localObject).append(this.n.getPackageName());
            ((StringBuilder)localObject).append("/");
            ((StringBuilder)localObject).append(i);
            localObject = ((StringBuilder)localObject).toString();
            localDrawable1 = j((String)localObject);
            if (localDrawable1 != null) {
              return localDrawable1;
            }
            localDrawable1 = androidx.core.content.a.e(this.n, i);
            z((String)localObject, localDrawable1);
            return localDrawable1;
          }
          catch (Resources.NotFoundException localNotFoundException)
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Icon resource not found: ");
            localStringBuilder.append(paramString);
            Log.w("SuggestionsAdapter", localStringBuilder.toString());
            return null;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            localDrawable2 = j(paramString);
            if (localDrawable2 != null) {
              return localDrawable2;
            }
            localDrawable2 = p(Uri.parse(paramString));
            z(paramString, localDrawable2);
          }
        }
      }
    }
    return localDrawable2;
  }
  
  private Drawable s(Cursor paramCursor)
  {
    int i = this.z;
    if (i == -1) {
      return null;
    }
    paramCursor = r(paramCursor.getString(i));
    if (paramCursor != null) {
      return paramCursor;
    }
    return o();
  }
  
  private Drawable t(Cursor paramCursor)
  {
    int i = this.D;
    if (i == -1) {
      return null;
    }
    return r(paramCursor.getString(i));
  }
  
  private static String v(Cursor paramCursor, int paramInt)
  {
    if (paramInt == -1) {
      return null;
    }
    try
    {
      paramCursor = paramCursor.getString(paramInt);
      return paramCursor;
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", paramCursor);
    }
    return null;
  }
  
  private void x(ImageView paramImageView, Drawable paramDrawable, int paramInt)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if (paramDrawable == null)
    {
      paramImageView.setVisibility(paramInt);
    }
    else
    {
      paramImageView.setVisibility(0);
      paramDrawable.setVisible(false, false);
      paramDrawable.setVisible(true, false);
    }
  }
  
  private void y(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setText(paramCharSequence);
    if (TextUtils.isEmpty(paramCharSequence)) {
      paramTextView.setVisibility(8);
    } else {
      paramTextView.setVisibility(0);
    }
  }
  
  private void z(String paramString, Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      this.o.put(paramString, paramDrawable.getConstantState());
    }
  }
  
  public void a(Cursor paramCursor)
  {
    if (this.q)
    {
      Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
      if (paramCursor != null) {
        paramCursor.close();
      }
      return;
    }
    try
    {
      super.a(paramCursor);
      if (paramCursor != null)
      {
        this.w = paramCursor.getColumnIndex("suggest_text_1");
        this.x = paramCursor.getColumnIndex("suggest_text_2");
        this.y = paramCursor.getColumnIndex("suggest_text_2_url");
        this.z = paramCursor.getColumnIndex("suggest_icon_1");
        this.D = paramCursor.getColumnIndex("suggest_icon_2");
        this.E = paramCursor.getColumnIndex("suggest_flags");
      }
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "error changing cursor and caching columns", paramCursor);
    }
  }
  
  public Cursor c(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      paramCharSequence = "";
    } else {
      paramCharSequence = paramCharSequence.toString();
    }
    if ((this.l.getVisibility() == 0) && (this.l.getWindowVisibility() == 0)) {
      try
      {
        paramCharSequence = u(this.m, paramCharSequence, 50);
        if (paramCharSequence != null)
        {
          paramCharSequence.getCount();
          return paramCharSequence;
        }
      }
      catch (RuntimeException paramCharSequence)
      {
        Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", paramCharSequence);
      }
    }
    return null;
  }
  
  public CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return null;
    }
    String str = n(paramCursor, "suggest_intent_query");
    if (str != null) {
      return str;
    }
    if (this.m.shouldRewriteQueryFromData())
    {
      str = n(paramCursor, "suggest_intent_data");
      if (str != null) {
        return str;
      }
    }
    if (this.m.shouldRewriteQueryFromText())
    {
      paramCursor = n(paramCursor, "suggest_text_1");
      if (paramCursor != null) {
        return paramCursor;
      }
    }
    return null;
  }
  
  public void d(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = (a)paramView.getTag();
    int i = this.E;
    if (i != -1) {
      i = paramCursor.getInt(i);
    } else {
      i = 0;
    }
    if (paramContext.a != null)
    {
      paramView = v(paramCursor, this.w);
      y(paramContext.a, paramView);
    }
    if (paramContext.b != null)
    {
      paramView = v(paramCursor, this.y);
      if (paramView != null) {
        paramView = k(paramView);
      } else {
        paramView = v(paramCursor, this.x);
      }
      TextView localTextView;
      if (TextUtils.isEmpty(paramView))
      {
        localTextView = paramContext.a;
        if (localTextView != null)
        {
          localTextView.setSingleLine(false);
          paramContext.a.setMaxLines(2);
        }
      }
      else
      {
        localTextView = paramContext.a;
        if (localTextView != null)
        {
          localTextView.setSingleLine(true);
          paramContext.a.setMaxLines(1);
        }
      }
      y(paramContext.b, paramView);
    }
    paramView = paramContext.c;
    if (paramView != null) {
      x(paramView, s(paramCursor), 4);
    }
    paramView = paramContext.d;
    if (paramView != null) {
      x(paramView, t(paramCursor), 8);
    }
    int j = this.r;
    if ((j != 2) && ((j != 1) || ((i & 0x1) == 0)))
    {
      paramContext.e.setVisibility(8);
    }
    else
    {
      paramContext.e.setVisibility(0);
      paramContext.e.setTag(paramContext.a.getText());
      paramContext.e.setOnClickListener(this);
    }
  }
  
  public View g(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = super.g(paramContext, paramCursor, paramViewGroup);
    paramContext.setTag(new a(paramContext));
    ((ImageView)paramContext.findViewById(f.q)).setImageResource(this.p);
    return paramContext;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getDropDownView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = f(this.n, b(), paramViewGroup);
      if (paramViewGroup != null) {
        ((a)paramViewGroup.getTag()).a.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = g(this.n, b(), paramViewGroup);
      if (paramViewGroup != null) {
        ((a)paramViewGroup.getTag()).a.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    A(b());
  }
  
  public void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    A(b());
  }
  
  public void onClick(View paramView)
  {
    paramView = paramView.getTag();
    if ((paramView instanceof CharSequence)) {
      this.l.u((CharSequence)paramView);
    }
  }
  
  Drawable q(Uri paramUri)
    throws FileNotFoundException
  {
    String str = paramUri.getAuthority();
    if (!TextUtils.isEmpty(str)) {
      try
      {
        Resources localResources = this.n.getPackageManager().getResourcesForApplication(str);
        List localList = paramUri.getPathSegments();
        if (localList != null)
        {
          int i = localList.size();
          if (i == 1)
          {
            try
            {
              i = Integer.parseInt((String)localList.get(0));
            }
            catch (NumberFormatException localNumberFormatException)
            {
              localStringBuilder1 = new StringBuilder();
              localStringBuilder1.append("Single path segment is not a resource ID: ");
              localStringBuilder1.append(paramUri);
              throw new FileNotFoundException(localStringBuilder1.toString());
            }
          }
          else
          {
            if (i != 2) {
              break label194;
            }
            i = localResources.getIdentifier((String)localStringBuilder1.get(1), (String)localStringBuilder1.get(0), str);
          }
          if (i != 0) {
            return localResources.getDrawable(i);
          }
          localStringBuilder1 = new StringBuilder();
          localStringBuilder1.append("No resource found for: ");
          localStringBuilder1.append(paramUri);
          throw new FileNotFoundException(localStringBuilder1.toString());
          label194:
          localStringBuilder1 = new StringBuilder();
          localStringBuilder1.append("More than two path segments: ");
          localStringBuilder1.append(paramUri);
          throw new FileNotFoundException(localStringBuilder1.toString());
        }
        StringBuilder localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append("No path: ");
        localStringBuilder1.append(paramUri);
        throw new FileNotFoundException(localStringBuilder1.toString());
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append("No package found for authority: ");
        localStringBuilder2.append(paramUri);
        throw new FileNotFoundException(localStringBuilder2.toString());
      }
    }
    StringBuilder localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append("No authority: ");
    localStringBuilder2.append(paramUri);
    throw new FileNotFoundException(localStringBuilder2.toString());
  }
  
  Cursor u(SearchableInfo paramSearchableInfo, String paramString, int paramInt)
  {
    Object localObject1 = null;
    if (paramSearchableInfo == null) {
      return null;
    }
    Object localObject2 = paramSearchableInfo.getSuggestAuthority();
    if (localObject2 == null) {
      return null;
    }
    localObject2 = new Uri.Builder().scheme("content").authority((String)localObject2).query("").fragment("");
    String str = paramSearchableInfo.getSuggestPath();
    if (str != null) {
      ((Uri.Builder)localObject2).appendEncodedPath(str);
    }
    ((Uri.Builder)localObject2).appendPath("search_suggest_query");
    str = paramSearchableInfo.getSuggestSelection();
    if (str != null)
    {
      paramSearchableInfo = new String[1];
      paramSearchableInfo[0] = paramString;
    }
    else
    {
      ((Uri.Builder)localObject2).appendPath(paramString);
      paramSearchableInfo = localObject1;
    }
    if (paramInt > 0) {
      ((Uri.Builder)localObject2).appendQueryParameter("limit", String.valueOf(paramInt));
    }
    paramString = ((Uri.Builder)localObject2).build();
    return this.n.getContentResolver().query(paramString, null, str, paramSearchableInfo, null);
  }
  
  public void w(int paramInt)
  {
    this.r = paramInt;
  }
  
  private static final class a
  {
    public final TextView a;
    public final TextView b;
    public final ImageView c;
    public final ImageView d;
    public final ImageView e;
    
    public a(View paramView)
    {
      this.a = ((TextView)paramView.findViewById(16908308));
      this.b = ((TextView)paramView.findViewById(16908309));
      this.c = ((ImageView)paramView.findViewById(16908295));
      this.d = ((ImageView)paramView.findViewById(16908296));
      this.e = ((ImageView)paramView.findViewById(f.q));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.t0
 * JD-Core Version:    0.7.0.1
 */