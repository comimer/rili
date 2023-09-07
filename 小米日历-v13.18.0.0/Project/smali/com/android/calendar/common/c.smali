.class public final synthetic Lcom/android/calendar/common/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/common/e;

.field public final synthetic b:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/common/e;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/common/c;->a:Lcom/android/calendar/common/e;

    iput-object p2, p0, Lcom/android/calendar/common/c;->b:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/common/c;->a:Lcom/android/calendar/common/e;

    iget-object v1, p0, Lcom/android/calendar/common/c;->b:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcom/android/calendar/common/e;->b(Lcom/android/calendar/common/e;Ljava/util/Calendar;)V

    return-void
.end method
