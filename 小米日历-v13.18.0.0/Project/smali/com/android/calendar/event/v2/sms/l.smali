.class public final synthetic Lcom/android/calendar/event/v2/sms/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/calendar/event/v2/sms/m;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/android/calendar/event/v2/sms/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/calendar/event/v2/sms/l;->a:I

    iput-object p2, p0, Lcom/android/calendar/event/v2/sms/l;->b:Lcom/android/calendar/event/v2/sms/m;

    iput-object p3, p0, Lcom/android/calendar/event/v2/sms/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/calendar/event/v2/sms/l;->a:I

    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/l;->b:Lcom/android/calendar/event/v2/sms/m;

    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/l;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/v2/sms/m;->N0(ILcom/android/calendar/event/v2/sms/m;Ljava/lang/String;)V

    return-void
.end method
