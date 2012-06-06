/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.stocksettings;
import android.app.ActivityManagerNative;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.PreferenceActivity;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.MenuItem;
import android.app.ActionBar;

import java.util.ArrayList;

public class StockSettings extends PreferenceActivity{
    private static final String LOG_TAG = "StockSettings";
    private static final String AUTO_ADJUST_SCREEN_POWER_STATE = "auto_adjust_screen_power_state";
    private static final String KEY_AUTO_ADJUST_SCREEN_POWER_STATE = "auto_adjust_screen_power";
    private static final String AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR = "auto_strengthen_gallery_image_color_state";
    private static final String KEY_AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR = "auto_strengthen_gallery_image_color";

    private CheckBoxPreference mAutoAdjustScreenPowerState;
    private CheckBoxPreference mAutoStrengthenGalleryImageColor;

    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mAutoAdjustScreenPowerState = (CheckBoxPreference) findPreference(KEY_AUTO_ADJUST_SCREEN_POWER_STATE);
        mAutoStrengthenGalleryImageColor = (CheckBoxPreference) findPreference(KEY_AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR);
        updateState();
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mAutoAdjustScreenPowerState) {
            if (mAutoAdjustScreenPowerState.isChecked()) {
                Settings.System.putInt(getContentResolver(), AUTO_ADJUST_SCREEN_POWER_STATE, 1);
            } else {
                Settings.System.putInt(getContentResolver(), AUTO_ADJUST_SCREEN_POWER_STATE, 0);
            }
        }else if (preference == mAutoStrengthenGalleryImageColor) {
            if (mAutoStrengthenGalleryImageColor.isChecked()) {
                Settings.System.putInt(getContentResolver(), AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR, 1);
            } else {
                Settings.System.putInt(getContentResolver(), AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR, 0);
            }
        } else {
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            finish();
            return true;

        default:
            return super.onOptionsItemSelected(item);
        }
    }

    private void updateState() {
        mAutoAdjustScreenPowerState.setChecked(Settings.System.getInt(getContentResolver(), AUTO_ADJUST_SCREEN_POWER_STATE, 1) != 0);
        mAutoStrengthenGalleryImageColor.setChecked(Settings.System.getInt(getContentResolver(), AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR, 0) != 0);
    }
}
