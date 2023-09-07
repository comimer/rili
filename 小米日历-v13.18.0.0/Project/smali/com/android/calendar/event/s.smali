.class public final synthetic Lcom/android/calendar/event/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/s;->a:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/android/calendar/event/s;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/android/calendar/event/s;->c:Lcom/android/calendar/event/EventInfoActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/event/s;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/android/calendar/event/s;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calendar/event/s;->c:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventInfoActivity;->k0(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V

    return-void
.end method
