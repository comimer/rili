.class public final synthetic Lcom/android/calendar/event/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/database/Cursor;


# direct methods
.method public synthetic constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/g0;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/g0;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->i(Landroid/database/Cursor;)V

    return-void
.end method
