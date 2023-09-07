.class public final synthetic Lcom/android/calendar/common/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/common/e;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/common/e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/common/d;->a:Lcom/android/calendar/common/e;

    iput-boolean p2, p0, Lcom/android/calendar/common/d;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/common/d;->a:Lcom/android/calendar/common/e;

    iget-boolean v1, p0, Lcom/android/calendar/common/d;->b:Z

    invoke-static {v0, v1}, Lcom/android/calendar/common/e;->a(Lcom/android/calendar/common/e;Z)V

    return-void
.end method
