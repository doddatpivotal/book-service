package com.vmware.cloud.tanzu.bookservice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FooController {

    @GetMapping("/version")
    Long getVersion() {
        return 5L;
    }
}
