.class public final synthetic Lcom/android/calendar/common/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/android/calendar/common/i;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/calendar/common/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/common/g;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/calendar/common/g;->b:Lcom/android/calendar/common/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/common/g;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/common/g;->b:Lcom/android/calendar/common/i;

    invoke-static {v0, v1}, Lcom/android/calendar/common/i;->T(Ljava/util/ArrayList;Lcom/android/calendar/common/i;)V

    return-void
.end method
