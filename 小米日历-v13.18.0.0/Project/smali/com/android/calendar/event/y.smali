.class public final synthetic Lcom/android/calendar/event/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$k;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/EventInfoActivity;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/EventInfoActivity;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/y;->a:Lcom/android/calendar/event/EventInfoActivity;

    iput p2, p0, Lcom/android/calendar/event/y;->b:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/y;->a:Lcom/android/calendar/event/EventInfoActivity;

    iget v1, p0, Lcom/android/calendar/event/y;->b:F

    invoke-static {v0, v1, p1, p2}, Lcom/android/calendar/event/EventInfoActivity;->c0(Lcom/android/calendar/event/EventInfoActivity;FLandroid/view/View;F)V

    return-void
.end method
