package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.b;
import androidx.core.view.u0;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class g
  implements u.a
{
  private static final String ACTION_VIEW_STATES_KEY = "android:menu:actionviewstates";
  private static final String EXPANDED_ACTION_VIEW_ID = "android:menu:expandedactionview";
  private static final String PRESENTER_KEY = "android:menu:presenters";
  private static final String TAG = "MenuBuilder";
  private static final int[] sCategoryToOrder = { 1, 4, 5, 3, 2, 0 };
  private ArrayList<i> mActionItems;
  private a mCallback;
  private final Context mContext;
  private ContextMenu.ContextMenuInfo mCurrentMenuInfo;
  private int mDefaultShowAsAction = 0;
  private i mExpandedItem;
  private boolean mGroupDividerEnabled = false;
  Drawable mHeaderIcon;
  CharSequence mHeaderTitle;
  View mHeaderView;
  private boolean mIsActionItemsStale;
  private boolean mIsClosing = false;
  private boolean mIsVisibleItemsStale;
  private ArrayList<i> mItems;
  private boolean mItemsChangedWhileDispatchPrevented = false;
  private ArrayList<i> mNonActionItems;
  private boolean mOptionalIconsVisible = false;
  private boolean mOverrideVisibleItems;
  private CopyOnWriteArrayList<WeakReference<m>> mPresenters = new CopyOnWriteArrayList();
  private boolean mPreventDispatchingItemsChanged = false;
  private boolean mQwertyMode;
  private final Resources mResources;
  private boolean mShortcutsVisible;
  private boolean mStructureChangedWhileDispatchPrevented = false;
  private ArrayList<i> mTempShortcutItemList = new ArrayList();
  private ArrayList<i> mVisibleItems;
  
  public g(Context paramContext)
  {
    this.mContext = paramContext;
    this.mResources = paramContext.getResources();
    this.mItems = new ArrayList();
    this.mVisibleItems = new ArrayList();
    this.mIsVisibleItemsStale = true;
    this.mActionItems = new ArrayList();
    this.mNonActionItems = new ArrayList();
    this.mIsActionItemsStale = true;
    setShortcutsVisibleInner(true);
  }
  
  private i createNewMenuItem(int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    return new i(this, paramInt1, paramInt2, paramInt3, paramInt4, paramCharSequence, paramInt5);
  }
  
  private void dispatchPresenterUpdate(boolean paramBoolean)
  {
    if (this.mPresenters.isEmpty()) {
      return;
    }
    stopDispatchingItemsChanged();
    Iterator localIterator = this.mPresenters.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      m localm = (m)localWeakReference.get();
      if (localm == null) {
        this.mPresenters.remove(localWeakReference);
      } else {
        localm.updateMenuView(paramBoolean);
      }
    }
    startDispatchingItemsChanged();
  }
  
  private void dispatchRestoreInstanceState(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:presenters");
    if ((paramBundle != null) && (!this.mPresenters.isEmpty()))
    {
      Iterator localIterator = this.mPresenters.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (WeakReference)localIterator.next();
        m localm = (m)((Reference)localObject).get();
        if (localm == null)
        {
          this.mPresenters.remove(localObject);
        }
        else
        {
          int i = localm.getId();
          if (i > 0)
          {
            localObject = (Parcelable)paramBundle.get(i);
            if (localObject != null) {
              localm.onRestoreInstanceState((Parcelable)localObject);
            }
          }
        }
      }
    }
  }
  
  private void dispatchSaveInstanceState(Bundle paramBundle)
  {
    if (this.mPresenters.isEmpty()) {
      return;
    }
    SparseArray localSparseArray = new SparseArray();
    Iterator localIterator = this.mPresenters.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      Object localObject = (m)localWeakReference.get();
      if (localObject == null)
      {
        this.mPresenters.remove(localWeakReference);
      }
      else
      {
        int i = ((m)localObject).getId();
        if (i > 0)
        {
          localObject = ((m)localObject).onSaveInstanceState();
          if (localObject != null) {
            localSparseArray.put(i, localObject);
          }
        }
      }
    }
    paramBundle.putSparseParcelableArray("android:menu:presenters", localSparseArray);
  }
  
  private boolean dispatchSubMenuSelected(r paramr, m paramm)
  {
    boolean bool1 = this.mPresenters.isEmpty();
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    if (paramm != null) {
      bool2 = paramm.onSubMenuSelected(paramr);
    }
    Iterator localIterator = this.mPresenters.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      paramm = (m)localWeakReference.get();
      if (paramm == null) {
        this.mPresenters.remove(localWeakReference);
      } else if (!bool2) {
        bool2 = paramm.onSubMenuSelected(paramr);
      }
    }
    return bool2;
  }
  
  private static int findInsertIndex(ArrayList<i> paramArrayList, int paramInt)
  {
    for (int i = paramArrayList.size() - 1; i >= 0; i--) {
      if (((i)paramArrayList.get(i)).f() <= paramInt) {
        return i + 1;
      }
    }
    return 0;
  }
  
  private static int getOrdering(int paramInt)
  {
    int i = (0xFFFF0000 & paramInt) >> 16;
    if (i >= 0)
    {
      int[] arrayOfInt = sCategoryToOrder;
      if (i < arrayOfInt.length) {
        return paramInt & 0xFFFF | arrayOfInt[i] << 16;
      }
    }
    throw new IllegalArgumentException("order does not contain a valid category.");
  }
  
  private void removeItemAtInt(int paramInt, boolean paramBoolean)
  {
    if ((paramInt >= 0) && (paramInt < this.mItems.size()))
    {
      this.mItems.remove(paramInt);
      if (paramBoolean) {
        onItemsChanged(true);
      }
    }
  }
  
  private void setHeaderInternal(int paramInt1, CharSequence paramCharSequence, int paramInt2, Drawable paramDrawable, View paramView)
  {
    Resources localResources = getResources();
    if (paramView != null)
    {
      this.mHeaderView = paramView;
      this.mHeaderTitle = null;
      this.mHeaderIcon = null;
    }
    else
    {
      if (paramInt1 > 0) {
        this.mHeaderTitle = localResources.getText(paramInt1);
      } else if (paramCharSequence != null) {
        this.mHeaderTitle = paramCharSequence;
      }
      if (paramInt2 > 0) {
        this.mHeaderIcon = androidx.core.content.a.e(getContext(), paramInt2);
      } else if (paramDrawable != null) {
        this.mHeaderIcon = paramDrawable;
      }
      this.mHeaderView = null;
    }
    onItemsChanged(false);
  }
  
  private void setShortcutsVisibleInner(boolean paramBoolean)
  {
    boolean bool = true;
    if ((paramBoolean) && (this.mResources.getConfiguration().keyboard != 1) && (u0.c(ViewConfiguration.get(this.mContext), this.mContext))) {
      paramBoolean = bool;
    } else {
      paramBoolean = false;
    }
    this.mShortcutsVisible = paramBoolean;
  }
  
  public MenuItem add(int paramInt)
  {
    return addInternal(0, 0, 0, this.mResources.getString(paramInt));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addInternal(paramInt1, paramInt2, paramInt3, this.mResources.getString(paramInt4));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    return addInternal(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = this.mContext.getPackageManager();
    int i = 0;
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int j;
    if (localList != null) {
      j = localList.size();
    } else {
      j = 0;
    }
    int k = i;
    if ((paramInt4 & 0x1) == 0) {
      removeGroup(paramInt1);
    }
    for (k = i; k < j; k++)
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localList.get(k);
      paramInt4 = localResolveInfo.specificIndex;
      if (paramInt4 < 0) {
        paramComponentName = paramIntent;
      } else {
        paramComponentName = paramArrayOfIntent[paramInt4];
      }
      paramComponentName = new Intent(paramComponentName);
      ActivityInfo localActivityInfo = localResolveInfo.activityInfo;
      paramComponentName.setComponent(new ComponentName(localActivityInfo.applicationInfo.packageName, localActivityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if (paramArrayOfMenuItem != null)
      {
        paramInt4 = localResolveInfo.specificIndex;
        if (paramInt4 >= 0) {
          paramArrayOfMenuItem[paramInt4] = paramComponentName;
        }
      }
    }
    return j;
  }
  
  protected MenuItem addInternal(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i = getOrdering(paramInt3);
    paramCharSequence = createNewMenuItem(paramInt1, paramInt2, paramInt3, i, paramCharSequence, this.mDefaultShowAsAction);
    Object localObject = this.mCurrentMenuInfo;
    if (localObject != null) {
      paramCharSequence.v((ContextMenu.ContextMenuInfo)localObject);
    }
    localObject = this.mItems;
    ((ArrayList)localObject).add(findInsertIndex((ArrayList)localObject, i), paramCharSequence);
    onItemsChanged(true);
    return paramCharSequence;
  }
  
  public void addMenuPresenter(m paramm)
  {
    addMenuPresenter(paramm, this.mContext);
  }
  
  public void addMenuPresenter(m paramm, Context paramContext)
  {
    this.mPresenters.add(new WeakReference(paramm));
    paramm.initForMenu(paramContext, this);
    this.mIsActionItemsStale = true;
  }
  
  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, this.mResources.getString(paramInt));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, this.mResources.getString(paramInt4));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    i locali = (i)addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
    paramCharSequence = new r(this.mContext, this, locali);
    locali.x(paramCharSequence);
    return paramCharSequence;
  }
  
  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  public void changeMenuMode()
  {
    a locala = this.mCallback;
    if (locala != null) {
      locala.onMenuModeChange(this);
    }
  }
  
  public void clear()
  {
    i locali = this.mExpandedItem;
    if (locali != null) {
      collapseItemActionView(locali);
    }
    this.mItems.clear();
    onItemsChanged(true);
  }
  
  public void clearAll()
  {
    this.mPreventDispatchingItemsChanged = true;
    clear();
    clearHeader();
    this.mPresenters.clear();
    this.mPreventDispatchingItemsChanged = false;
    this.mItemsChangedWhileDispatchPrevented = false;
    this.mStructureChangedWhileDispatchPrevented = false;
    onItemsChanged(true);
  }
  
  public void clearHeader()
  {
    this.mHeaderIcon = null;
    this.mHeaderTitle = null;
    this.mHeaderView = null;
    onItemsChanged(false);
  }
  
  public void close()
  {
    close(true);
  }
  
  public final void close(boolean paramBoolean)
  {
    if (this.mIsClosing) {
      return;
    }
    this.mIsClosing = true;
    Iterator localIterator = this.mPresenters.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      m localm = (m)localWeakReference.get();
      if (localm == null) {
        this.mPresenters.remove(localWeakReference);
      } else {
        localm.onCloseMenu(this, paramBoolean);
      }
    }
    this.mIsClosing = false;
  }
  
  public boolean collapseItemActionView(i parami)
  {
    boolean bool1 = this.mPresenters.isEmpty();
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = bool2;
    if (!bool1) {
      if (this.mExpandedItem != parami)
      {
        bool4 = bool2;
      }
      else
      {
        stopDispatchingItemsChanged();
        Iterator localIterator = this.mPresenters.iterator();
        bool4 = bool3;
        do
        {
          m localm;
          for (;;)
          {
            bool3 = bool4;
            if (!localIterator.hasNext()) {
              break label125;
            }
            WeakReference localWeakReference = (WeakReference)localIterator.next();
            localm = (m)localWeakReference.get();
            if (localm != null) {
              break;
            }
            this.mPresenters.remove(localWeakReference);
          }
          bool3 = localm.collapseItemActionView(this, parami);
          bool4 = bool3;
        } while (!bool3);
        label125:
        startDispatchingItemsChanged();
        bool4 = bool3;
        if (bool3)
        {
          this.mExpandedItem = null;
          bool4 = bool3;
        }
      }
    }
    return bool4;
  }
  
  boolean dispatchMenuItemSelected(g paramg, MenuItem paramMenuItem)
  {
    a locala = this.mCallback;
    boolean bool;
    if ((locala != null) && (locala.onMenuItemSelected(paramg, paramMenuItem))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean expandItemActionView(i parami)
  {
    boolean bool1 = this.mPresenters.isEmpty();
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    stopDispatchingItemsChanged();
    Iterator localIterator = this.mPresenters.iterator();
    do
    {
      m localm;
      for (;;)
      {
        bool1 = bool2;
        if (!localIterator.hasNext()) {
          break label97;
        }
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        localm = (m)localWeakReference.get();
        if (localm != null) {
          break;
        }
        this.mPresenters.remove(localWeakReference);
      }
      bool1 = localm.expandItemActionView(this, parami);
      bool2 = bool1;
    } while (!bool1);
    label97:
    startDispatchingItemsChanged();
    if (bool1) {
      this.mExpandedItem = parami;
    }
    return bool1;
  }
  
  public int findGroupIndex(int paramInt)
  {
    return findGroupIndex(paramInt, 0);
  }
  
  public int findGroupIndex(int paramInt1, int paramInt2)
  {
    int i = size();
    int j = paramInt2;
    if (paramInt2 < 0) {}
    for (j = 0; j < i; j++) {
      if (((i)this.mItems.get(j)).getGroupId() == paramInt1) {
        return j;
      }
    }
    return -1;
  }
  
  public MenuItem findItem(int paramInt)
  {
    int i = size();
    for (int j = 0; j < i; j++)
    {
      Object localObject = (i)this.mItems.get(j);
      if (((i)localObject).getItemId() == paramInt) {
        return localObject;
      }
      if (((i)localObject).hasSubMenu())
      {
        localObject = ((i)localObject).getSubMenu().findItem(paramInt);
        if (localObject != null) {
          return localObject;
        }
      }
    }
    return null;
  }
  
  public int findItemIndex(int paramInt)
  {
    int i = size();
    for (int j = 0; j < i; j++) {
      if (((i)this.mItems.get(j)).getItemId() == paramInt) {
        return j;
      }
    }
    return -1;
  }
  
  i findItemWithShortcutForKey(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = this.mTempShortcutItemList;
    localArrayList.clear();
    findItemsWithShortcutForKey(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty()) {
      return null;
    }
    int i = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int j = localArrayList.size();
    if (j == 1) {
      return (i)localArrayList.get(0);
    }
    boolean bool = isQwertyMode();
    for (int k = 0; k < j; k++)
    {
      paramKeyEvent = (i)localArrayList.get(k);
      int m;
      if (bool) {
        m = paramKeyEvent.getAlphabeticShortcut();
      } else {
        m = paramKeyEvent.getNumericShortcut();
      }
      char[] arrayOfChar = localKeyData.meta;
      if (((m == arrayOfChar[0]) && ((i & 0x2) == 0)) || ((m == arrayOfChar[2]) && ((i & 0x2) != 0)) || ((bool) && (m == 8) && (paramInt == 67))) {
        return paramKeyEvent;
      }
    }
    return null;
  }
  
  void findItemsWithShortcutForKey(List<i> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = isQwertyMode();
    int i = paramKeyEvent.getModifiers();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int j = this.mItems.size();
    for (int k = 0; k < j; k++)
    {
      i locali = (i)this.mItems.get(k);
      if (locali.hasSubMenu()) {
        ((g)locali.getSubMenu()).findItemsWithShortcutForKey(paramList, paramInt, paramKeyEvent);
      }
      int m;
      if (bool) {
        m = locali.getAlphabeticShortcut();
      } else {
        m = locali.getNumericShortcut();
      }
      int n;
      if (bool) {
        n = locali.getAlphabeticModifiers();
      } else {
        n = locali.getNumericModifiers();
      }
      if ((i & 0x1100F) == (n & 0x1100F)) {
        n = 1;
      } else {
        n = 0;
      }
      if ((n != 0) && (m != 0))
      {
        char[] arrayOfChar = localKeyData.meta;
        if (((m == arrayOfChar[0]) || (m == arrayOfChar[2]) || ((bool) && (m == 8) && (paramInt == 67))) && (locali.isEnabled())) {
          paramList.add(locali);
        }
      }
    }
  }
  
  public void flagActionItems()
  {
    ArrayList localArrayList = getVisibleItems();
    if (!this.mIsActionItemsStale) {
      return;
    }
    Iterator localIterator = this.mPresenters.iterator();
    int i = 0;
    Object localObject;
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      localObject = (m)localWeakReference.get();
      if (localObject == null) {
        this.mPresenters.remove(localWeakReference);
      } else {
        i |= ((m)localObject).flagActionItems();
      }
    }
    if (i != 0)
    {
      this.mActionItems.clear();
      this.mNonActionItems.clear();
      int j = localArrayList.size();
      for (i = 0; i < j; i++)
      {
        localObject = (i)localArrayList.get(i);
        if (((i)localObject).l()) {
          this.mActionItems.add(localObject);
        } else {
          this.mNonActionItems.add(localObject);
        }
      }
    }
    this.mActionItems.clear();
    this.mNonActionItems.clear();
    this.mNonActionItems.addAll(getVisibleItems());
    this.mIsActionItemsStale = false;
  }
  
  public ArrayList<i> getActionItems()
  {
    flagActionItems();
    return this.mActionItems;
  }
  
  protected String getActionViewStatesKey()
  {
    return "android:menu:actionviewstates";
  }
  
  public Context getContext()
  {
    return this.mContext;
  }
  
  public i getExpandedItem()
  {
    return this.mExpandedItem;
  }
  
  public Drawable getHeaderIcon()
  {
    return this.mHeaderIcon;
  }
  
  public CharSequence getHeaderTitle()
  {
    return this.mHeaderTitle;
  }
  
  public View getHeaderView()
  {
    return this.mHeaderView;
  }
  
  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)this.mItems.get(paramInt);
  }
  
  public ArrayList<i> getNonActionItems()
  {
    flagActionItems();
    return this.mNonActionItems;
  }
  
  boolean getOptionalIconsVisible()
  {
    return this.mOptionalIconsVisible;
  }
  
  Resources getResources()
  {
    return this.mResources;
  }
  
  public g getRootMenu()
  {
    return this;
  }
  
  public ArrayList<i> getVisibleItems()
  {
    if (!this.mIsVisibleItemsStale) {
      return this.mVisibleItems;
    }
    this.mVisibleItems.clear();
    int i = this.mItems.size();
    for (int j = 0; j < i; j++)
    {
      i locali = (i)this.mItems.get(j);
      if (locali.isVisible()) {
        this.mVisibleItems.add(locali);
      }
    }
    this.mIsVisibleItemsStale = false;
    this.mIsActionItemsStale = true;
    return this.mVisibleItems;
  }
  
  public boolean hasVisibleItems()
  {
    if (this.mOverrideVisibleItems) {
      return true;
    }
    int i = size();
    for (int j = 0; j < i; j++) {
      if (((i)this.mItems.get(j)).isVisible()) {
        return true;
      }
    }
    return false;
  }
  
  public boolean isGroupDividerEnabled()
  {
    return this.mGroupDividerEnabled;
  }
  
  boolean isQwertyMode()
  {
    return this.mQwertyMode;
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (findItemWithShortcutForKey(paramInt, paramKeyEvent) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isShortcutsVisible()
  {
    return this.mShortcutsVisible;
  }
  
  void onItemActionRequestChanged(i parami)
  {
    this.mIsActionItemsStale = true;
    onItemsChanged(true);
  }
  
  void onItemVisibleChanged(i parami)
  {
    this.mIsVisibleItemsStale = true;
    onItemsChanged(true);
  }
  
  public void onItemsChanged(boolean paramBoolean)
  {
    if (!this.mPreventDispatchingItemsChanged)
    {
      if (paramBoolean)
      {
        this.mIsVisibleItemsStale = true;
        this.mIsActionItemsStale = true;
      }
      dispatchPresenterUpdate(paramBoolean);
    }
    else
    {
      this.mItemsChangedWhileDispatchPrevented = true;
      if (paramBoolean) {
        this.mStructureChangedWhileDispatchPrevented = true;
      }
    }
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return performItemAction(findItem(paramInt1), paramInt2);
  }
  
  public boolean performItemAction(MenuItem paramMenuItem, int paramInt)
  {
    return performItemAction(paramMenuItem, null, paramInt);
  }
  
  public boolean performItemAction(MenuItem paramMenuItem, m paramm, int paramInt)
  {
    Object localObject = (i)paramMenuItem;
    if ((localObject != null) && (((i)localObject).isEnabled()))
    {
      boolean bool1 = ((i)localObject).k();
      paramMenuItem = ((i)localObject).b();
      int i;
      if ((paramMenuItem != null) && (paramMenuItem.a())) {
        i = 1;
      } else {
        i = 0;
      }
      boolean bool2;
      if (((i)localObject).j())
      {
        bool1 |= ((i)localObject).expandActionView();
        bool2 = bool1;
        if (bool1)
        {
          close(true);
          bool2 = bool1;
        }
      }
      else if ((!((i)localObject).hasSubMenu()) && (i == 0))
      {
        bool2 = bool1;
        if ((paramInt & 0x1) == 0)
        {
          close(true);
          bool2 = bool1;
        }
      }
      else
      {
        if ((paramInt & 0x4) == 0) {
          close(false);
        }
        if (!((i)localObject).hasSubMenu()) {
          ((i)localObject).x(new r(getContext(), this, (i)localObject));
        }
        localObject = (r)((i)localObject).getSubMenu();
        if (i != 0) {
          paramMenuItem.f((SubMenu)localObject);
        }
        bool1 |= dispatchSubMenuSelected((r)localObject, paramm);
        bool2 = bool1;
        if (!bool1)
        {
          close(true);
          bool2 = bool1;
        }
      }
      return bool2;
    }
    return false;
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = findItemWithShortcutForKey(paramInt1, paramKeyEvent);
    boolean bool;
    if (paramKeyEvent != null) {
      bool = performItemAction(paramKeyEvent, paramInt2);
    } else {
      bool = false;
    }
    if ((paramInt2 & 0x2) != 0) {
      close(true);
    }
    return bool;
  }
  
  public void removeGroup(int paramInt)
  {
    int i = findGroupIndex(paramInt);
    if (i >= 0)
    {
      int j = this.mItems.size();
      for (int k = 0; (k < j - i) && (((i)this.mItems.get(i)).getGroupId() == paramInt); k++) {
        removeItemAtInt(i, false);
      }
      onItemsChanged(true);
    }
  }
  
  public void removeItem(int paramInt)
  {
    removeItemAtInt(findItemIndex(paramInt), true);
  }
  
  public void removeItemAt(int paramInt)
  {
    removeItemAtInt(paramInt, true);
  }
  
  public void removeMenuPresenter(m paramm)
  {
    Iterator localIterator = this.mPresenters.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      m localm = (m)localWeakReference.get();
      if ((localm == null) || (localm == paramm)) {
        this.mPresenters.remove(localWeakReference);
      }
    }
  }
  
  public void restoreActionViewStates(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    SparseArray localSparseArray = paramBundle.getSparseParcelableArray(getActionViewStatesKey());
    int i = size();
    for (int j = 0; j < i; j++)
    {
      MenuItem localMenuItem = getItem(j);
      View localView = localMenuItem.getActionView();
      if ((localView != null) && (localView.getId() != -1)) {
        localView.restoreHierarchyState(localSparseArray);
      }
      if (localMenuItem.hasSubMenu()) {
        ((r)localMenuItem.getSubMenu()).restoreActionViewStates(paramBundle);
      }
    }
    j = paramBundle.getInt("android:menu:expandedactionview");
    if (j > 0)
    {
      paramBundle = findItem(j);
      if (paramBundle != null) {
        paramBundle.expandActionView();
      }
    }
  }
  
  public void restorePresenterStates(Bundle paramBundle)
  {
    dispatchRestoreInstanceState(paramBundle);
  }
  
  public void saveActionViewStates(Bundle paramBundle)
  {
    int i = size();
    Object localObject1 = null;
    int j = 0;
    while (j < i)
    {
      MenuItem localMenuItem = getItem(j);
      View localView = localMenuItem.getActionView();
      Object localObject2 = localObject1;
      if (localView != null)
      {
        localObject2 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject3 = localObject1;
          if (localObject1 == null) {
            localObject3 = new SparseArray();
          }
          localView.saveHierarchyState((SparseArray)localObject3);
          localObject2 = localObject3;
          if (localMenuItem.isActionViewExpanded())
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject2 = localObject3;
          }
        }
      }
      if (localMenuItem.hasSubMenu()) {
        ((r)localMenuItem.getSubMenu()).saveActionViewStates(paramBundle);
      }
      j++;
      localObject1 = localObject2;
    }
    if (localObject1 != null) {
      paramBundle.putSparseParcelableArray(getActionViewStatesKey(), localObject1);
    }
  }
  
  public void savePresenterStates(Bundle paramBundle)
  {
    dispatchSaveInstanceState(paramBundle);
  }
  
  public void setCallback(a parama)
  {
    this.mCallback = parama;
  }
  
  public void setCurrentMenuInfo(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    this.mCurrentMenuInfo = paramContextMenuInfo;
  }
  
  public g setDefaultShowAsAction(int paramInt)
  {
    this.mDefaultShowAsAction = paramInt;
    return this;
  }
  
  void setExclusiveItemChecked(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getGroupId();
    int j = this.mItems.size();
    stopDispatchingItemsChanged();
    for (int k = 0; k < j; k++)
    {
      i locali = (i)this.mItems.get(k);
      if ((locali.getGroupId() == i) && (locali.m()) && (locali.isCheckable()))
      {
        boolean bool;
        if (locali == paramMenuItem) {
          bool = true;
        } else {
          bool = false;
        }
        locali.s(bool);
      }
    }
    startDispatchingItemsChanged();
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = this.mItems.size();
    for (int j = 0; j < i; j++)
    {
      i locali = (i)this.mItems.get(j);
      if (locali.getGroupId() == paramInt)
      {
        locali.t(paramBoolean2);
        locali.setCheckable(paramBoolean1);
      }
    }
  }
  
  public void setGroupDividerEnabled(boolean paramBoolean)
  {
    this.mGroupDividerEnabled = paramBoolean;
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i = this.mItems.size();
    for (int j = 0; j < i; j++)
    {
      i locali = (i)this.mItems.get(j);
      if (locali.getGroupId() == paramInt) {
        locali.setEnabled(paramBoolean);
      }
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i = this.mItems.size();
    int j = 0;
    int m;
    for (int k = 0; j < i; k = m)
    {
      i locali = (i)this.mItems.get(j);
      m = k;
      if (locali.getGroupId() == paramInt)
      {
        m = k;
        if (locali.y(paramBoolean)) {
          m = 1;
        }
      }
      j++;
    }
    if (k != 0) {
      onItemsChanged(true);
    }
  }
  
  protected g setHeaderIconInt(int paramInt)
  {
    setHeaderInternal(0, null, paramInt, null, null);
    return this;
  }
  
  protected g setHeaderIconInt(Drawable paramDrawable)
  {
    setHeaderInternal(0, null, 0, paramDrawable, null);
    return this;
  }
  
  protected g setHeaderTitleInt(int paramInt)
  {
    setHeaderInternal(paramInt, null, 0, null, null);
    return this;
  }
  
  protected g setHeaderTitleInt(CharSequence paramCharSequence)
  {
    setHeaderInternal(0, paramCharSequence, 0, null, null);
    return this;
  }
  
  protected g setHeaderViewInt(View paramView)
  {
    setHeaderInternal(0, null, 0, null, paramView);
    return this;
  }
  
  public void setOptionalIconsVisible(boolean paramBoolean)
  {
    this.mOptionalIconsVisible = paramBoolean;
  }
  
  public void setOverrideVisibleItems(boolean paramBoolean)
  {
    this.mOverrideVisibleItems = paramBoolean;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    this.mQwertyMode = paramBoolean;
    onItemsChanged(false);
  }
  
  public void setShortcutsVisible(boolean paramBoolean)
  {
    if (this.mShortcutsVisible == paramBoolean) {
      return;
    }
    setShortcutsVisibleInner(paramBoolean);
    onItemsChanged(false);
  }
  
  public int size()
  {
    return this.mItems.size();
  }
  
  public void startDispatchingItemsChanged()
  {
    this.mPreventDispatchingItemsChanged = false;
    if (this.mItemsChangedWhileDispatchPrevented)
    {
      this.mItemsChangedWhileDispatchPrevented = false;
      onItemsChanged(this.mStructureChangedWhileDispatchPrevented);
    }
  }
  
  public void stopDispatchingItemsChanged()
  {
    if (!this.mPreventDispatchingItemsChanged)
    {
      this.mPreventDispatchingItemsChanged = true;
      this.mItemsChangedWhileDispatchPrevented = false;
      this.mStructureChangedWhileDispatchPrevented = false;
    }
  }
  
  public static abstract interface a
  {
    public abstract boolean onMenuItemSelected(g paramg, MenuItem paramMenuItem);
    
    public abstract void onMenuModeChange(g paramg);
  }
  
  public static abstract interface b
  {
    public abstract boolean a(i parami);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.g
 * JD-Core Version:    0.7.0.1
 */