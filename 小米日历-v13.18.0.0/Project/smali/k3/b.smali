.class public final synthetic Lk3/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk3/d$b;

.field public final synthetic b:Lcom/miui/calendar/account/mi/MiAccountSchema;


# direct methods
.method public synthetic constructor <init>(Lk3/d$b;Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/b;->a:Lk3/d$b;

    iput-object p2, p0, Lk3/b;->b:Lcom/miui/calendar/account/mi/MiAccountSchema;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/b;->a:Lk3/d$b;

    iget-object v1, p0, Lk3/b;->b:Lcom/miui/calendar/account/mi/MiAccountSchema;

    invoke-static {v0, v1}, Lk3/d;->b(Lk3/d$b;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
