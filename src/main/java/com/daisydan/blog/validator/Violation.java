package com.daisydan.blog.validator;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Violation {

    private String message;

    private Object invalidValue;

    private Object invalidObject;
}
