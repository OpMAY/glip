package com.restcontroller;

import com.model.common.MFile;
import com.response.DefaultRes;
import com.response.Message;
import com.response.ResMessage;
import com.response.StatusCode;
import com.util.Constant;
import com.util.FileUploadUtility;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;


@Slf4j
@RestController
public class GlipAjaxController {
    /* Service AutoWired */

    @Autowired
    private FileUploadUtility fileUploadUtility;
    /* Service AutoWired END */

    @PostMapping(value = "/smarteditor/image/upload")
    public ResponseEntity<String> smartEditorImageUpload(MultipartFile file) {
        try {
            MFile mfile = fileUploadUtility.uploadFile(file, Constant.CDN_PATH.SMART_EDITOR);

            Message message = new Message();
            message.put("status", "success");
            message.put("url", mfile.getUrl());
            return new ResponseEntity(
                    DefaultRes.res(
                            StatusCode.OK, ResMessage.TEST_SUCCESS, message.getHashMap("ajax")
                    ), HttpStatus.OK
            );
        } catch (JSONException e) {
            e.printStackTrace();
            return new ResponseEntity<>("false", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
