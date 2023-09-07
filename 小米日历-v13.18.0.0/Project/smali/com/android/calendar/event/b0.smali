.class public final synthetic Lcom/android/calendar/event/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/EventInfoActivity;

.field public final synthetic b:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/b0;->a:Lcom/android/calendar/event/EventInfoActivity;

    iput-object p2, p0, Lcom/android/calendar/event/b0;->b:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/b0;->a:Lcom/android/calendar/event/EventInfoActivity;

    iget-object v1, p0, Lcom/android/calendar/event/b0;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->a0(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method
