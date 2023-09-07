.class public final synthetic Lcom/android/calendar/event/v2/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/j0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/d0;->a:Lcom/android/calendar/event/v2/j0;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/d0;->a:Lcom/android/calendar/event/v2/j0;

    invoke-static {v0, p1}, Lcom/android/calendar/event/v2/j0;->K(Lcom/android/calendar/event/v2/j0;Landroid/content/DialogInterface;)V

    return-void
.end method
