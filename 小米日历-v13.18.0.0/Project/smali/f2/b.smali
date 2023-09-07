.class public Lf2/b;
.super Ljava/lang/Object;
.source "CalendarInflateViewUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "miuix.springback.view.SpringBackLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "com.airbnb.lottie.LottieAnimationView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "Button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "com.miui.calendar.view.LoadingView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "EditText"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "com.miui.calendar.view.MonthPanelContainer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.miui.calendar.widget.EmptyView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.miui.calendar.view.VelocityListView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "ListView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "FrameLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "miuix.slidingwidget.widget.SlidingButton"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "ViewStub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "miuix.miuixbasewidget.widget.FilterSortView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "LinearLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "ImageView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.miui.calendar.view.CardView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.miui.calendar.view.OnlineImageView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "androidx.viewpager2.widget.ViewPager2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "androidx.core.widget.NestedScrollView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "miuix.appcompat.internal.app.widget.ActionBarOverlayLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.android.calendar.homepage.HomePageContainer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "miuix.appcompat.internal.app.widget.ActionBarContainer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "RadioButton"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.miui.calendar.view.BetterScrollView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "androidx.appcompat.widget.AppCompatImageView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "com.miui.calendar.view.MainPanelMotionContainer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "View"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "miuix.appcompat.internal.app.widget.ActionBarView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "com.miui.calendar.view.MultiRadioGroup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "ViewSwitcher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "com.miui.calendar.view.LoadingLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "com.android.calendar.homepage.AllDayViewPager"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "RelativeLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "miuix.appcompat.widget.Spinner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "miuix.recyclerview.widget.RecyclerView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "androidx.constraintlayout.widget.Group"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "com.miui.calendar.view.VerticalMotionFrameLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "com.android.ex.chips.RecipientEditTextView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "TextView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "miuix.miuixbasewidget.widget.FilterSortView$TabView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "androidx.constraintlayout.widget.ConstraintLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "com.miui.calendar.view.VerticalTextView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "com.miui.calendar.view.InfiniteViewPager"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2b
    const-string v0, "com.miui.calendar.view.OrientationImageView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2c
    const-string v0, "com.android.calendar.homepage.LSWeekCalendarView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2d
    const-string v0, "ProgressBar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2e
    const-string v0, "com.android.calendar.homepage.WeekHeaderView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_0

    :cond_2e
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2f
    const-string v0, "com.miui.calendar.view.ShadowView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_0

    :cond_2f
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_30
    const-string v0, "RatingBar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_0

    :cond_30
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_31
    const-string v0, "com.miui.calendar.view.MonthMotionContainer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_0

    :cond_31
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    new-instance p0, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 3
    :pswitch_1
    new-instance p0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 4
    :pswitch_2
    new-instance p0, Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 5
    :pswitch_3
    new-instance p0, Lcom/miui/calendar/view/LoadingView;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 6
    :pswitch_4
    new-instance p0, Landroid/widget/EditText;

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 7
    :pswitch_5
    new-instance p0, Lcom/miui/calendar/view/MonthPanelContainer;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/MonthPanelContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 8
    :pswitch_6
    new-instance p0, Lcom/miui/calendar/widget/EmptyView;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 9
    :pswitch_7
    new-instance p0, Lcom/miui/calendar/view/a0;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/a0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 10
    :pswitch_8
    new-instance p0, Landroid/widget/ListView;

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 11
    :pswitch_9
    new-instance p0, Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 12
    :pswitch_a
    new-instance p0, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-direct {p0, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 13
    :pswitch_b
    new-instance p0, Landroid/view/ViewStub;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 14
    :pswitch_c
    new-instance p0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 15
    :pswitch_d
    new-instance p0, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 16
    :pswitch_e
    new-instance p0, Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 17
    :pswitch_f
    new-instance p0, Lcom/miui/calendar/view/CardView;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 18
    :pswitch_10
    new-instance p0, Lcom/miui/calendar/view/OnlineImageView;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/OnlineImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 19
    :pswitch_11
    new-instance p0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 20
    :pswitch_12
    new-instance p0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 21
    :pswitch_13
    new-instance p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 22
    :pswitch_14
    new-instance p0, Lcom/android/calendar/homepage/HomePageContainer;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/HomePageContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 23
    :pswitch_15
    new-instance p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 24
    :pswitch_16
    new-instance p0, Landroid/widget/RadioButton;

    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 25
    :pswitch_17
    new-instance p0, Lcom/miui/calendar/view/BetterScrollView;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/BetterScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 26
    :pswitch_18
    new-instance p0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 27
    :pswitch_19
    new-instance p0, Lcom/miui/calendar/view/MainPanelMotionContainer;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/MainPanelMotionContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 28
    :pswitch_1a
    new-instance p0, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 29
    :pswitch_1b
    new-instance p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 30
    :pswitch_1c
    new-instance p0, Lcom/miui/calendar/view/MultiRadioGroup;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/MultiRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 31
    :pswitch_1d
    new-instance p0, Landroid/widget/ViewSwitcher;

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 32
    :pswitch_1e
    new-instance p0, Lcom/miui/calendar/view/LoadingLayout;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 33
    :pswitch_1f
    new-instance p0, Lcom/android/calendar/homepage/AllDayViewPager;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/AllDayViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 34
    :pswitch_20
    new-instance p0, Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 35
    :pswitch_21
    new-instance p0, Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 36
    :pswitch_22
    new-instance p0, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 37
    :pswitch_23
    new-instance p0, Landroidx/constraintlayout/widget/Group;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/Group;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 38
    :pswitch_24
    new-instance p0, Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/VerticalMotionFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 39
    :pswitch_25
    new-instance p0, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 40
    :pswitch_26
    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 41
    :pswitch_27
    new-instance p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 42
    :pswitch_28
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 43
    :pswitch_29
    new-instance p0, Lcom/miui/calendar/view/VerticalTextView;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/VerticalTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 44
    :pswitch_2a
    new-instance p0, Lcom/miui/calendar/view/InfiniteViewPager;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/InfiniteViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 45
    :pswitch_2b
    new-instance p0, Lcom/miui/calendar/view/OrientationImageView;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/OrientationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 46
    :pswitch_2c
    new-instance p0, Lcom/android/calendar/homepage/LSWeekCalendarView;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/LSWeekCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 47
    :pswitch_2d
    new-instance p0, Landroid/widget/ProgressBar;

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 48
    :pswitch_2e
    new-instance p0, Lcom/android/calendar/homepage/WeekHeaderView;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/WeekHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 49
    :pswitch_2f
    new-instance p0, Lcom/miui/calendar/view/ShadowView;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/ShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 50
    :pswitch_30
    new-instance p0, Landroid/widget/RatingBar;

    invoke-direct {p0, p1, p2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 51
    :pswitch_31
    new-instance p0, Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/view/MonthMotionContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x75bbb20b -> :sswitch_31
        -0x7404ceea -> :sswitch_30
        -0x620c4c71 -> :sswitch_2f
        -0x5c8d213e -> :sswitch_2e
        -0x5924e17a -> :sswitch_2d
        -0x55ec6886 -> :sswitch_2c
        -0x4a670a26 -> :sswitch_2b
        -0x472f3e80 -> :sswitch_2a
        -0x3c1b40ce -> :sswitch_29
        -0x3a65a351 -> :sswitch_28
        -0x3898189c -> :sswitch_27
        -0x37f7066e -> :sswitch_26
        -0x3204c921 -> :sswitch_25
        -0x2f870c5f -> :sswitch_24
        -0x267605c9 -> :sswitch_23
        -0x1ad55696 -> :sswitch_22
        -0x1a90f560 -> :sswitch_21
        -0x1a719aca -> :sswitch_20
        -0x16a53139 -> :sswitch_1f
        -0x13dac864 -> :sswitch_1e
        -0xcf6bb3a -> :sswitch_1d
        -0x91aec0d -> :sswitch_1c
        -0x7aeee3b -> :sswitch_1b
        0x28aec5 -> :sswitch_1a
        0x7296c4a -> :sswitch_19
        0xd918017 -> :sswitch_18
        0x18e5794c -> :sswitch_17
        0x2e46a6ed -> :sswitch_16
        0x2f90e961 -> :sswitch_15
        0x345299b7 -> :sswitch_14
        0x3a19dc7a -> :sswitch_13
        0x3e0c7489 -> :sswitch_12
        0x3ec3ca09 -> :sswitch_11
        0x4015a823 -> :sswitch_10
        0x42121fff -> :sswitch_f
        0x431b5280 -> :sswitch_e
        0x43311acf -> :sswitch_d
        0x46f6924e -> :sswitch_c
        0x4b214113 -> :sswitch_b
        0x4b738d98 -> :sswitch_a
        0x4e20b2d7 -> :sswitch_9
        0x54104483 -> :sswitch_8
        0x5449888a -> :sswitch_7
        0x59231dc7 -> :sswitch_6
        0x5a645913 -> :sswitch_5
        0x63577677 -> :sswitch_4
        0x7069eb97 -> :sswitch_3
        0x77471352 -> :sswitch_2
        0x79b1ebf0 -> :sswitch_1
        0x79ee8313 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
