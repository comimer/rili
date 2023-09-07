.class public final synthetic Lcom/android/calendar/event/v2/l0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/calendar/event/v2/BirthdayEventInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/calendar/event/v2/l0;->a:Z

    iput-object p2, p0, Lcom/android/calendar/event/v2/l0;->b:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/calendar/event/v2/l0;->a:Z

    iget-object v1, p0, Lcom/android/calendar/event/v2/l0;->b:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    invoke-static {v0, v1}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;->K(ZLcom/android/calendar/event/v2/BirthdayEventInfoFragment;)V

    return-void
.end method
