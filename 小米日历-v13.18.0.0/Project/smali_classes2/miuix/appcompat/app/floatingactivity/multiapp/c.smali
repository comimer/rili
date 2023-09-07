.class public final synthetic Lmiuix/appcompat/app/floatingactivity/multiapp/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/app/m;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/c;->a:Lmiuix/appcompat/app/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/c;->a:Lmiuix/appcompat/app/m;

    invoke-virtual {v0}, Lmiuix/appcompat/app/m;->M()V

    return-void
.end method
