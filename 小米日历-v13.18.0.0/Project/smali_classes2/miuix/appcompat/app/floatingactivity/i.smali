.class public final synthetic Lmiuix/appcompat/app/floatingactivity/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lmiuix/appcompat/app/m;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/i;->a:Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/i;->b:Landroid/view/View;

    iput-object p3, p0, Lmiuix/appcompat/app/floatingactivity/i;->c:Lmiuix/appcompat/app/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/i;->a:Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/i;->b:Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/i;->c:Lmiuix/appcompat/app/m;

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->j(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/m;)V

    return-void
.end method
