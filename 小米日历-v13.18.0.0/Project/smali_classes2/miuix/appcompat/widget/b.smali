.class public final synthetic Lmiuix/appcompat/widget/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/b;->a:Lmiuix/appcompat/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/b;->a:Lmiuix/appcompat/widget/Spinner;

    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->a(Lmiuix/appcompat/widget/Spinner;)V

    return-void
.end method
