.class public final synthetic Lcom/android/calendar/event/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/EventInfoActivity;

.field public final synthetic b:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/q;->a:Lcom/android/calendar/event/EventInfoActivity;

    iput-object p2, p0, Lcom/android/calendar/event/q;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/android/calendar/event/q;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/event/q;->a:Lcom/android/calendar/event/EventInfoActivity;

    iget-object v1, p0, Lcom/android/calendar/event/q;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/android/calendar/event/q;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventInfoActivity;->b0(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;Landroid/graphics/Bitmap;)V

    return-void
.end method
