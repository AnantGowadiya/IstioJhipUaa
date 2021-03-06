package com.jhipster.quotes.service.mapper;

import com.jhipster.quotes.domain.*;
import com.jhipster.quotes.service.dto.QuoteDTO;

import org.mapstruct.*;

/**
 * Mapper for the entity {@link Quote} and its DTO {@link QuoteDTO}.
 */
@Mapper(componentModel = "spring", uses = {})
public interface QuoteMapper extends EntityMapper<QuoteDTO, Quote> {



    default Quote fromId(String id) {
        if (id == null) {
            return null;
        }
        Quote quote = new Quote();
        quote.setId(id);
        return quote;
    }
}
