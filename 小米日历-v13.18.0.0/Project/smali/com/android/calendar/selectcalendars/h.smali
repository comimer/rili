.class public final synthetic Lcom/android/calendar/selectcalendars/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/selectcalendars/AccountManagerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/h;->a:Lcom/android/calendar/selectcalendars/AccountManagerFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/h;->a:Lcom/android/calendar/selectcalendars/AccountManagerFragment;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->i(Lcom/android/calendar/selectcalendars/AccountManagerFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
