.class public final synthetic Lk3/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk3/d$b;


# direct methods
.method public synthetic constructor <init>(Lk3/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/a;->a:Lk3/d$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lk3/a;->a:Lk3/d$b;

    invoke-static {v0}, Lk3/d;->a(Lk3/d$b;)V

    return-void
.end method
