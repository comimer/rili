.class public final synthetic Lcom/android/calendar/homepage/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/s;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    iput-boolean p2, p0, Lcom/android/calendar/homepage/s;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/s;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    iget-boolean v1, p0, Lcom/android/calendar/homepage/s;->b:Z

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/AllInOneActivity;->d0(Lcom/android/calendar/homepage/AllInOneActivity;Z)V

    return-void
.end method
