.class public final synthetic Lcom/android/calendar/event/v2/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/m;->a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/m;->a:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    invoke-static {v0, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->L(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
