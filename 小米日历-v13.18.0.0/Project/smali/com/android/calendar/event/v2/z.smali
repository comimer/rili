.class public final synthetic Lcom/android/calendar/event/v2/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/RelativeLayout;

.field public final synthetic b:Lcom/android/calendar/event/v2/j0;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/z;->a:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/calendar/event/v2/z;->b:Lcom/android/calendar/event/v2/j0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/v2/z;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/calendar/event/v2/z;->b:Lcom/android/calendar/event/v2/j0;

    invoke-static {v0, v1}, Lcom/android/calendar/event/v2/j0;->L(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V

    return-void
.end method
