package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes.dex */
public final class PreFillType {
    static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.RGB_565;
    private final Bitmap.Config config;
    private final int height;
    private final int weight;
    private final int width;

    PreFillType(int r2, int r3, Bitmap.Config config, int r5) {
        this.config = (Bitmap.Config) Preconditions.checkNotNull(config, "Config must not be null");
        this.width = r2;
        this.height = r3;
        this.weight = r5;
    }

    int getWidth() {
        return this.width;
    }

    int getHeight() {
        return this.height;
    }

    Bitmap.Config getConfig() {
        return this.config;
    }

    int getWeight() {
        return this.weight;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PreFillType)) {
            return false;
        }
        PreFillType preFillType = (PreFillType) obj;
        return this.height == preFillType.height && this.width == preFillType.width && this.weight == preFillType.weight && this.config == preFillType.config;
    }

    public int hashCode() {
        return (((((this.width * 31) + this.height) * 31) + this.config.hashCode()) * 31) + this.weight;
    }

    public String toString() {
        return "PreFillSize{width=" + this.width + ", height=" + this.height + ", config=" + this.config + ", weight=" + this.weight + '}';
    }

    public static class Builder {
        private Bitmap.Config config;
        private final int height;
        private int weight;
        private final int width;

        public Builder(int r1) {
            this(r1, r1);
        }

        public Builder(int r2, int r3) {
            this.weight = 1;
            if (r2 <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (r3 <= 0) {
                throw new IllegalArgumentException("Height must be > 0");
            }
            this.width = r2;
            this.height = r3;
        }

        public Builder setConfig(Bitmap.Config config) {
            this.config = config;
            return this;
        }

        Bitmap.Config getConfig() {
            return this.config;
        }

        public Builder setWeight(int r1) {
            if (r1 <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.weight = r1;
            return this;
        }

        PreFillType build() {
            return new PreFillType(this.width, this.height, this.config, this.weight);
        }
    }
}
