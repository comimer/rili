.class public final synthetic Lcom/android/calendar/event/v2/p0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/p0;->a:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/p0;->a:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    invoke-static {v0, p1}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;->M(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
